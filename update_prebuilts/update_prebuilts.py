#!/usr/bin/python3

# This script is used to update platform SDK prebuilts, Support Library, and a variety of other
# prebuilt libraries used by Android's Makefile builds. For details on how to use this script,
# visit go/update-prebuilts.
import os, sys, getopt, zipfile, re
import argparse
import glob
import subprocess
from shutil import copyfile, rmtree, which
from distutils.version import LooseVersion
from functools import reduce

current_path = 'current'
framework_sdk_target = 'sdk_phone_armv7-sdk_mac'
support_dir = os.path.join(current_path, 'support')
extras_dir = os.path.join(current_path, 'extras')

temp_dir = os.path.join(os.getcwd(), "support_tmp")
os.chdir(os.path.dirname(os.path.dirname(os.path.realpath(sys.argv[0]))))
git_dir = os.getcwd()

# See go/fetch_artifact for details on this script.
FETCH_ARTIFACT = '/google/data/ro/projects/android/fetch_artifact'

maven_to_make = {
    # Support Library
    'com.android.support:animated-vector-drawable': ['android-support-animatedvectordrawable', 'graphics/drawable'],
    'com.android.support:appcompat-v7': ['android-support-v7-appcompat', 'v7/appcompat'],
    'com.android.support:cardview-v7': ['android-support-v7-cardview', 'v7/cardview'],
    'com.android.support:collections': ['android-support-collections', 'collections', 'jar'],
    'com.android.support:customtabs': ['android-support-customtabs', 'customtabs'],
    'com.android.support:design': ['android-support-design', 'design'],
    'com.android.support:exifinterface': ['android-support-exifinterface', 'exifinterface'],
    'com.android.support:gridlayout-v7': ['android-support-v7-gridlayout', 'v7/gridlayout'],
    'com.android.support:leanback-v17': ['android-support-v17-leanback', 'v17/leanback'],
    'com.android.support:mediarouter-v7': ['android-support-v7-mediarouter', 'v7/mediarouter'],
    'com.android.support:palette-v7': ['android-support-v7-palette', 'v7/palette'],
    'com.android.support:percent': ['android-support-percent', 'percent'],
    'com.android.support:preference-leanback-v17': ['android-support-v17-preference-leanback', 'v17/preference-leanback'],
    'com.android.support:preference-v14': ['android-support-v14-preference', 'v14/preference'],
    'com.android.support:preference-v7': ['android-support-v7-preference', 'v7/preference'],
    'com.android.support:recommendation': ['android-support-recommendation', 'recommendation'],
    'com.android.support:recyclerview-v7': ['android-support-v7-recyclerview', 'v7/recyclerview'],
    'com.android.support:support-annotations': ['android-support-annotations', 'annotations', 'jar'],
    'com.android.support:support-compat': ['android-support-compat', 'compat'],
    'com.android.support:support-core-ui': ['android-support-core-ui', 'core-ui'],
    'com.android.support:support-core-utils': ['android-support-core-utils', 'core-utils'],
    'com.android.support:support-dynamic-animation': ['android-support-dynamic-animation', 'dynamic-animation'],
    'com.android.support:support-emoji-appcompat': ['android-support-emoji-appcompat', 'emoji-appcompat'],
    'com.android.support:support-emoji-bundled': ['android-support-emoji-bundled', 'emoji-bundled'],
    'com.android.support:support-emoji': ['android-support-emoji', 'emoji'],
    'com.android.support:support-fragment': ['android-support-fragment', 'fragment'],
    'com.android.support:support-media-compat': ['android-support-media-compat', 'media-compat'],
    'com.android.support:support-tv-provider': ['android-support-tv-provider', 'tv-provider'],
    'com.android.support:support-v13': ['android-support-v13', 'v13'],
    'com.android.support:support-v4': ['android-support-v4', 'v4'],
    'com.android.support:support-vector-drawable': ['android-support-vectordrawable', 'graphics/drawable'],
    'com.android.support:transition': ['android-support-transition', 'transition'],
    'com.android.support:wear': ['android-support-wear', 'wear'],

    # Constraint Layout
    'com.android.support.constraint:constraint-layout': ['android-support-constraint-layout', 'constraint-layout'],
    'com.android.support.constraint:constraint-layout-solver': ['android-support-constraint-layout-solver', 'constraint-layout-solver'],
}

# Always remove these files.
blacklist_files = [
    'annotations.zip',
    'public.txt',
    'R.txt',
    'AndroidManifest.xml',
    os.path.join('libs','noto-emoji-compat-java.jar')
]

artifact_pattern = re.compile(r"^(.+?)-(\d+\.\d+\.\d+(?:-\w+\d+)?(?:-[\d.]+)*)\.(jar|aar)$")


class MavenLibraryInfo:
    def __init__(self, key, group_id, artifact_id, version, dir, repo_dir, file):
        self.key = key
        self.group_id = group_id
        self.artifact_id = artifact_id
        self.version = version
        self.dir = dir
        self.repo_dir = repo_dir
        self.file = file


def print_e(*args, **kwargs):
    print(*args, file=sys.stderr, **kwargs)


def touch(fname, times=None):
    with open(fname, 'a'):
        os.utime(fname, times)


def path(*path_parts):
    return reduce((lambda x, y: os.path.join(x, y)), path_parts)


def flatten(list):
    return reduce((lambda x, y: "%s %s" % (x, y)), list)


def rm(path):
    if os.path.isdir(path):
        rmtree(path)
    elif os.path.exists(path):
        os.remove(path)


def mv(src_path, dst_path):
    if os.path.exists(dst_path):
        rm(dst_path)
    if not os.path.exists(os.path.dirname(dst_path)):
        os.makedirs(os.path.dirname(dst_path))
    for f in (glob.glob(src_path)):
        if '*' in dst_path:
            dst = os.path.join(os.path.dirname(dst_path), os.path.basename(f))
        else:
            dst = dst_path
        os.rename(f, dst)


def detect_artifacts(maven_repo_dirs):
    maven_lib_info = {}

    # Find the latest revision for each artifact, remove others
    for repo_dir in maven_repo_dirs:
        for root, dirs, files in os.walk(repo_dir):
            for file in files:
                if file[-4:] == ".pom":
                    # Read the POM (hack hack hack).
                    group_id = ''
                    artifact_id = ''
                    version = ''
                    file = os.path.join(root, file)
                    with open(file) as pom_file:
                        for line in pom_file:
                            if line[:11] == '  <groupId>':
                                group_id = line[11:-11]
                            elif line[:14] == '  <artifactId>':
                                artifact_id = line[14:-14]
                            elif line[:11] == '  <version>':
                                version = line[11:-11]
                    if group_id == '' or artifact_id == '' or version == '':
                        print_e('Failed to find Maven artifact data in ' + file)
                        continue

                    # Locate the artifact.
                    artifact_file = file[:-4]
                    if os.path.exists(artifact_file + '.jar'):
                        artifact_file = artifact_file + '.jar'
                    elif os.path.exists(artifact_file + '.aar'):
                        artifact_file = artifact_file + '.aar'
                    else:
                        print_e('Failed to find artifact for ' + artifact_file)
                        continue

                    # Make relative to root.
                    artifact_file = artifact_file[len(root) + 1:]

                    # Find the mapping.
                    group_artifact = group_id + ':' + artifact_id
                    if group_artifact in maven_to_make:
                        key = group_artifact
                    elif artifact_id in maven_to_make:
                        key = artifact_id
                    else:
                        print_e('Failed to find artifact mapping for ' + group_artifact)
                        continue

                    # Store the latest version.
                    version = LooseVersion(version)
                    if key not in maven_lib_info \
                            or version > maven_lib_info[key].version:
                        maven_lib_info[key] = MavenLibraryInfo(key, group_id, artifact_id, version,
                                                               root, repo_dir, artifact_file)

    return maven_lib_info


def transform_maven_repos(maven_repo_dirs, transformed_dir, extract_res=True, include_static_deps=True):
    cwd = os.getcwd()

    # Use a temporary working directory.
    maven_lib_info = detect_artifacts(maven_repo_dirs)
    working_dir = temp_dir

    if not maven_lib_info:
        print_e('Failed to detect artifacts')
        return False

    # extract some files (for example, AndroidManifest.xml) from any relevant artifacts
    for info in maven_lib_info.values():
        transform_maven_lib(working_dir, info, extract_res)

    # generate a single Android.bp that specifies to use all of the above artifacts
    makefile = os.path.join(working_dir, 'Android.bp')
    with open(makefile, 'w') as f:
        args = ["pom2bp", "-sdk-version", "current"]
        if include_static_deps:
            args.append("-static-deps")
        rewriteNames = [name for name in maven_to_make if ":" in name] + [name for name in maven_to_make if ":" not in name]
        args.extend(["-rewrite=^" + name + "$=" + maven_to_make[name][0] for name in rewriteNames])
        args.extend(["."])
        subprocess.check_call(args, stdout=f, cwd=working_dir)

    # Replace the old directory.
    output_dir = os.path.join(cwd, transformed_dir)
    mv(working_dir, output_dir)
    return True

# moves <artifact_info> (of type MavenLibraryInfo) into the appropriate part of <working_dir> , and possibly unpacks any necessary included files
def transform_maven_lib(working_dir, artifact_info, extract_res):
    # Move library into working dir
    new_dir = os.path.normpath(os.path.join(working_dir, os.path.relpath(artifact_info.dir, artifact_info.repo_dir)))
    mv(artifact_info.dir, new_dir)

    for dirpath, dirs, files in os.walk(new_dir):
        for f in files:
            if '-sources.jar' in f:
                os.remove(os.path.join(dirpath, f))

    matcher = artifact_pattern.match(artifact_info.file)
    maven_lib_name = artifact_info.key
    maven_lib_vers = matcher.group(2)
    maven_lib_type = artifact_info.file[-3:]

    make_lib_name = maven_to_make[artifact_info.key][0]
    make_dir_name = maven_to_make[artifact_info.key][1]

    artifact_file = os.path.join(new_dir, artifact_info.file)

    if maven_lib_type == "aar":
        if extract_res:
            target_dir = os.path.join(working_dir, make_dir_name)
            if not os.path.exists(target_dir):
                os.makedirs(target_dir)

            process_aar(artifact_file, target_dir)

        with zipfile.ZipFile(artifact_file) as zip:
            manifests_dir = os.path.join(working_dir, "manifests")
            zip.extract("AndroidManifest.xml", os.path.join(manifests_dir, make_lib_name))

    print(maven_lib_vers, ":", maven_lib_name, "->", make_lib_name)


def process_aar(artifact_file, target_dir):
    # Extract AAR file to target_dir.
    with zipfile.ZipFile(artifact_file) as zip:
        zip.extractall(target_dir)

    # Remove classes.jar
    classes_jar = os.path.join(target_dir, "classes.jar")
    if os.path.exists(classes_jar):
        os.remove(classes_jar)

    # Remove or preserve empty dirs.
    for root, dirs, files in os.walk(target_dir):
        for dir in dirs:
            dir_path = os.path.join(root, dir)
            if not os.listdir(dir_path):
                os.rmdir(dir_path)

    # Remove top-level cruft.
    for file in blacklist_files:
        file_path = os.path.join(target_dir, file)
        if os.path.exists(file_path):
            os.remove(file_path)


def fetch_artifact(target, build_id, artifact_path):
    download_to = os.path.join('.', os.path.dirname(artifact_path))
    print('Fetching %s from %s ...' % (artifact_path, target))
    if not os.path.exists(download_to):
        os.makedirs(download_to)
    fetch_cmd = [FETCH_ARTIFACT, '--bid', str(build_id), '--target', target, artifact_path,
                 download_to]
    try:
        subprocess.check_output(fetch_cmd, stderr=subprocess.STDOUT)
    except subprocess.CalledProcessError:
        print_e('FAIL: Unable to retrieve %s artifact for build ID %s' % (artifact_path, build_id))
        print_e('Please make sure you are authenticated for build server access!')
        return None
    return artifact_path


def fetch_artifacts(target, build_id, artifact_dict):
    for artifact, target_path in artifact_dict.items():
        artifact_path = fetch_artifact(target, build_id.url_id, artifact)
        if not artifact_path:
            return False
        mv(artifact_path, target_path)
    return True


def extract_artifact(artifact_path):
    # Unzip the repo archive into a separate directory.
    repo_dir = os.path.basename(artifact_path)[:-4]
    with zipfile.ZipFile(artifact_path) as zipFile:
        zipFile.extractall(repo_dir)
    return repo_dir


def fetch_and_extract(target, build_id, file, artifact_path=None):
    if not artifact_path:
        artifact_path = fetch_artifact(target, build_id, file)
    if not artifact_path:
        return None
    return extract_artifact(artifact_path)


def update_support(target, build_id, local_file):
    if build_id:
        repo_file = 'top-of-tree-m2repository-%s.zip' % build_id.fs_id
        repo_dir = fetch_and_extract(target, build_id.url_id, repo_file, None)
    else:
        repo_dir = fetch_and_extract(target, None, None, local_file)
    if not repo_dir:
        print_e('Failed to extract Support Library repository')
        return False

    # Transform the repo archive into a Makefile-compatible format.
    return transform_maven_repos([repo_dir], support_dir, extract_res=True)


def update_constraint(target, build_id):
    layout_dir = fetch_and_extract(target, build_id.url_id,
                                   'com.android.support.constraint-constraint-layout-%s.zip' % build_id.fs_id)
    solver_dir = fetch_and_extract(target, build_id.url_id,
                                   'com.android.support.constraint-constraint-layout-solver-%s.zip' % build_id.fs_id)
    if not layout_dir or not solver_dir:
        print_e('Failed to extract Constraint Layout repositories')
        return False

    # Passing False here is an inelegant solution, but it means we can replace
    # the top-level directory without worrying about other child directories.
    return transform_maven_repos([layout_dir, solver_dir],
                                os.path.join(extras_dir, 'constraint-layout'), extract_res=False)


def extract_to(zip_file, filename, parent_path):
    zip_path = next(filter(lambda path: filename in path, zip_file.namelist()))
    src_path = zip_file.extract(zip_path)
    dst_path = path(parent_path, filename)
    mv(src_path, dst_path)


# This is a dict from an api scope to an "artifact dict". The artifact dict
# maps from artifact name to the respective package it stubs.
# TODO(hansson): standardize the artifact names and remove this dict.
sdk_artifacts_dict = {
    'core': {
        'core.current.stubs.jar': 'android.jar',
    },
    'public': {
        'apistubs/public/*.jar': '*',
    },
    'system': {
        'android_system.jar': 'android.jar',
        'apistubs/system/*.jar': '*',
    },
    'test': {
        'apistubs/test/*.jar': '*',
    }
}


def update_framework(build_id, sdk_dir):
    for api_scope in ['core', 'public', 'system', 'test']:
        target_dir = path(sdk_dir, api_scope)
        artifact_to_filename = sdk_artifacts_dict[api_scope]
        artifact_to_path = {artifact: path(target_dir, filename)
                            for (artifact, filename) in artifact_to_filename.items()}

        if not fetch_artifacts(framework_sdk_target, build_id, artifact_to_path):
            return False

        if api_scope == 'public':
            # Fetch a few artifacts from the public sdk.
            artifact = 'sdk-repo-darwin-platforms-%s.zip' % build_id.fs_id
            artifact_path = fetch_artifact(framework_sdk_target, build_id.url_id, artifact)
            if not artifact_path:
                return False

            with zipfile.ZipFile(artifact_path) as zipFile:
                for filename in ['android.jar', 'framework.aidl', 'uiautomator.jar']:
                    extract_to(zipFile, filename, target_dir)

    return True


def finalize_sdk(build_id, sdk_version):
    target_finalize_dir = '%d' % sdk_version

    extra_finalize_artifacts = {
      'public_api.txt': path(target_finalize_dir, 'public/api/android.txt'),
      'system-api.txt': path(target_finalize_dir, 'system/api/android.txt'),
    }
    return fetch_artifacts(framework_sdk_target, build_id, extra_finalize_artifacts) \
            and update_framework(build_id, target_finalize_dir)


def update_framework_current(build_id):
    return update_framework(build_id, current_path)


def append(text, more_text):
    if text:
        return "%s, %s" % (text, more_text)
    return more_text


class buildId(object):
  def __init__(self, url_id, fs_id):
    # id when used in build server urls
    self.url_id = url_id
    # id when used in build commands
    self.fs_id = fs_id

def getBuildId(args):
  # must be in the format 12345 or P12345
  source = args.source
  number_text = source[:]
  presubmit = False
  if number_text.startswith("P"):
    presubmit = True
    number_text = number_text[1:]
  if not number_text.isnumeric():
    return None
  url_id = source
  fs_id = url_id
  if presubmit:
    fs_id = "0"
  args.file = False
  return buildId(url_id, fs_id)

def getFile(args):
  source = args.source
  if not source.isnumeric():
    return args.source
  return None


def script_relative(rel_path):
    return os.path.join(script_dir, rel_path)


def uncommittedChangesExist():
    try:
        # Make sure we don't overwrite any pending changes.
        diffCommand = "cd " + git_dir + " && git diff --quiet"
        subprocess.check_call(diffCommand, shell=True)
        subprocess.check_call(diffCommand + " --cached", shell=True)
        return False
    except subprocess.CalledProcessError:
        return True


rm(temp_dir)
parser = argparse.ArgumentParser(
    description=('Update current prebuilts'))
parser.add_argument(
    'source',
    help='Build server build ID or local Maven ZIP file')
parser.add_argument(
    '-c', '--constraint', action="store_true",
    help='If specified, updates only Constraint Layout')
parser.add_argument(
    '-s', '--support', action="store_true",
    help='If specified, updates only the Support Library')
parser.add_argument(
    '-p', '--platform', action="store_true",
    help='If specified, updates only the Android Platform')
parser.add_argument(
    '-f', '--finalize_sdk', type=int,
    help='If specified, imports the source build as the specified finalized SDK version')
parser.add_argument(
    '--commit-first', action="store_true",
    help='If specified, then if uncommited changes exist, commit before continuing')
args = parser.parse_args()
args.file = True
if not args.source:
    parser.error("You must specify a build ID or local Maven ZIP file")
    sys.exit(1)
if not (args.support or args.platform or args.constraint or args.finalize_sdk):
    parser.error("You must specify at least one target to update")
    sys.exit(1)
if (args.support or args.constraint) \
        and which('pom2bp') is None:
    parser.error("Cannot find pom2bp in path; please run lunch to set up build environment")
    sys.exit(1)

if uncommittedChangesExist():
    if args.commit_first:
        subprocess.check_call("cd " + git_dir + " && git add -u", shell=True)
        subprocess.check_call("cd " + git_dir + " && git commit -m 'save working state'", shell=True)

if uncommittedChangesExist():
    print_e('FAIL: There are uncommitted changes here. Please commit or stash before continuing, because %s will run "git reset --hard" if execution fails' % os.path.basename(__file__))
    sys.exit(1)

try:
    components = None
    if args.constraint:
        if update_constraint('studio', getBuildId(args)):
            components = append(components, 'Constraint Layout')
        else:
            print_e('Failed to update Constraint Layout, aborting...')
            sys.exit(1)
    if args.support:
        if update_support('support_library', getBuildId(args), getFile(args)):
            components = append(components, 'Support Library')
        else:
            print_e('Failed to update Support Library, aborting...')
            sys.exit(1)
    if args.platform:
        build_id = getBuildId(args)
        if update_framework_current(build_id):
            components = append(components, 'platform SDK')
        else:
            print_e('Failed to update platform SDK, aborting...')
            sys.exit(1)
    if args.finalize_sdk:
        if finalize_sdk(getBuildId(args), args.finalize_sdk):
            subprocess.check_call(['git', 'add', "%d" % args.finalize_sdk])
            components = append(components, 'finalized SDK %d' % args.finalize_sdk)
        else:
            print_e('Failed to finalize SDK %d, aborting...' % args.finalize_sdk)
            sys.exit(1)



    subprocess.check_call(['git', 'add', current_path])
    if not args.source.isnumeric():
        src_msg = "local Maven ZIP"
    else:
        src_msg = "build %s" % (getBuildId(args).url_id)
    msg = "Import %s from %s\n\n%s" % (components, src_msg, flatten(sys.argv))
    subprocess.check_call(['git', 'commit', '-m', msg])
    print('Remember to test this change before uploading it to Gerrit!')

finally:
    # Revert all stray files, including the downloaded zip.
    try:
        with open(os.devnull, 'w') as bitbucket:
            subprocess.check_call(['git', 'add', '-Af', '.'], stdout=bitbucket)
            subprocess.check_call(
                ['git', 'commit', '-m', 'COMMIT TO REVERT - RESET ME!!!', '--allow-empty'], stdout=bitbucket)
            subprocess.check_call(['git', 'reset', '--hard', 'HEAD~1'], stdout=bitbucket)
    except subprocess.CalledProcessError:
        print_e('ERROR: Failed cleaning up, manual cleanup required!!!')
