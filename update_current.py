#!/usr/bin/python3

# This script is used to update platform SDK prebuilts, Support Library, and a variety of other
# prebuilt libraries used by Android's Makefile builds. For details on how to use this script,
# visit go/update-prebuilts.
import os, sys, getopt, zipfile, re
import argparse
import subprocess
from shutil import copyfile, rmtree, which
from distutils.version import LooseVersion
from functools import reduce

current_path = 'current'
system_path = 'system_current'
support_dir = os.path.join(current_path, 'support')
extras_dir = os.path.join(current_path, 'extras')
buildtools_dir = 'tools'
jetifier_dir = os.path.join(buildtools_dir, 'jetifier')

# See go/fetch_artifact for details on this script.
FETCH_ARTIFACT = '/google/data/ro/projects/android/fetch_artifact'

# Does not import support-v4, which is handled as a separate Android.mk (../support-v4) to
# statically include dependencies. Similarly, the support-v13 module is imported as
# support-v13-nodeps and then handled as a separate Android.mk (../support-v13) to statically
# include dependencies.
maven_to_make = {
    'animated-vector-drawable':     ['android-support-animatedvectordrawable',      'graphics/drawable'],
    'appcompat-v7':                 ['android-support-v7-appcompat',                'v7/appcompat'],
    'cardview-v7':                  ['android-support-v7-cardview',                 'v7/cardview'],
    'customtabs':                   ['android-support-customtabs',                  'customtabs'],
    'exifinterface':                ['android-support-exifinterface',               'exifinterface'],
    'gridlayout-v7':                ['android-support-v7-gridlayout',               'v7/gridlayout'],
    'leanback-v17':                 ['android-support-v17-leanback',                'v17/leanback'],
    'mediarouter-v7':               ['android-support-v7-mediarouter',              'v7/mediarouter'],
    'palette-v7':                   ['android-support-v7-palette',                  'v7/palette'],
    'percent':                      ['android-support-percent',                     'percent'],
    'preference-leanback-v17':      ['android-support-v17-preference-leanback',     'v17/preference-leanback'],
    'preference-v14':               ['android-support-v14-preference',              'v14/preference'],
    'preference-v7':                ['android-support-v7-preference',               'v7/preference'],
    'recommendation':               ['android-support-recommendation',              'recommendation'],
    'recyclerview-v7':              ['android-support-v7-recyclerview',             'v7/recyclerview'],
    'support-annotations':          ['android-support-annotations',                 'annotations',              'jar'],
    'support-compat':               ['android-support-compat',                      'compat'],
    'support-core-ui':              ['android-support-core-ui',                     'core-ui'],
    'support-core-utils':           ['android-support-core-utils',                  'core-utils'],
    'support-dynamic-animation':    ['android-support-dynamic-animation',           'dynamic-animation'],
    'support-emoji':                ['android-support-emoji',                       'emoji'],
    'support-emoji-appcompat':      ['android-support-emoji-appcompat',             'emoji-appcompat'],
    'support-emoji-bundled':        ['android-support-emoji-bundled',               'emoji-bundled'],
    'support-fragment':             ['android-support-fragment',                    'fragment'],
    'support-media-compat':         ['android-support-media-compat',                'media-compat'],
    'support-tv-provider':          ['android-support-tv-provider',                 'tv-provider'],
    'support-v4':                   ['android-support-v4',                          'v4'],
    'support-v13':                  ['android-support-v13',                         'v13'],
    'support-vector-drawable':      ['android-support-vectordrawable',              'graphics/drawable'],
    'transition':                   ['android-support-transition',                  'transition'],
    'wear':                         ['android-support-wear',                        'wear'],
    # Slices
    'slices-core':                  ['android-slices-core',                         'slices-core'],
    'slices-view':                  ['android-slices-view',                         'slices-view'],
    'slices-builders':              ['android-slices-builders',                     'slices-builders'],

    # Multidex
    'multidex':                 ['android-support-multidex',                 'multidex/library'],
    'multidex-instrumentation': ['android-support-multidex-instrumentation', 'multidex/instrumentation'],

    # Constraint Layout
    'constraint-layout':        ['android-support-constraint-layout',        'constraint-layout'],
    'constraint-layout-solver': ['android-support-constraint-layout-solver', 'constraint-layout-solver'],

    # App Arch Core
    'android.arch.core:runtime': ['android-arch-core-runtime', 'arch-core/runtime'],
    'android.arch.core:common':  ['android-arch-core-common',  'arch-core/common'],
    'android.arch.core:testing': ['android-arch-core-testing', 'arch-core/testing'],

    # Paging
    'android.arch.paging:common':  ['android-arch-paging-common',  'arch-paging/common'],
    'android.arch.paging:runtime': ['android-arch-paging-runtime', 'arch-paging/runtime'],

    # Lifecycle
    'android.arch.lifecycle:livedata-core':   ['android-arch-lifecycle-livedata-core',  'arch-lifecycle/livedata-core'],
    'android.arch.lifecycle:livedata':        ['android-arch-lifecycle-livedata',       'arch-lifecycle/livedata'],
    'android.arch.lifecycle:viewmodel':       ['android-arch-lifecycle-viewmodel',      'arch-lifecycle/viewmodel'],
    'android.arch.lifecycle:extensions':      ['android-arch-lifecycle-extensions',     'arch-lifecycle/extensions'],
    'android.arch.lifecycle:runtime':         ['android-arch-lifecycle-runtime',        'arch-lifecycle/runtime'],
    'android.arch.lifecycle:common':          ['android-arch-lifecycle-common',         'arch-lifecycle/common'],
    'android.arch.lifecycle:common-java8':    ['android-arch-lifecycle-common-java8',   'arch-lifecycle/common-java8'],
    # Missing dependencies:
    # - auto-common
    # - javapoet
    #'android.arch.lifecycle:compiler':        ['android-arch-lifecycle-compiler',       'arch-lifecycle/compiler'],
    # Missing dependencies:
    # - reactive-streams
    #'android.arch.lifecycle:reactivestreams': ['android-arch-lifecycle-reactivestreams','arch-lifecycle/reactivestreams'],

    # Persistence
    'android.arch.persistence:db':           ['android-arch-persistence-db',           'arch-persistence/db'],
    'android.arch.persistence:db-framework': ['android-arch-persistence-db-framework', 'arch-persistence/db-framework'],

    # Room
    'android.arch.persistence.room:common':    ['android-arch-room-common',    'arch-room/common'],
    # Missing dependencies:
    # - auto-common
    # - javapoet
    # - antlr4
    # - kotlin-metadata
    # - commons-codec
    #'android.arch.persistence.room:compiler':  ['android-arch-room-compiler',  'arch-room/compiler'],
    'android.arch.persistence.room:runtime':   ['android-arch-room-runtime',   'arch-room/runtime'],
    'android.arch.persistence.room:migration': ['android-arch-room-migration', 'arch-room/migration'],
    # Missing dependencies:
    # - rxjava
    #'android.arch.persistence.room:rxjava2':   ['android-arch-room-rxjava2',   'arch-room/rxjava2'],
    'android.arch.persistence.room:testing':   ['android-arch-room-testing',   'arch-room/testing'],

    # Material Design Components
    'com.google.android:flexbox': ['flexbox', 'flexbox'],
    'design': ['android-support-design', 'design'],
    'design-animation': ['android-support-design-animation', 'design-animation'],
    'design-bottomnavigation': ['android-support-design-bottomnavigation', 'design-bottomnavigation'],
    'design-bottomsheet': ['android-support-design-bottomsheet', 'design-bottomsheet'],
    'design-button': ['android-support-design-button', 'design-button'],
    'design-canvas': ['android-support-design-canvas', 'design-canvas'],
    'design-card': ['android-support-design-card', 'design-card'],
    'design-chip': ['android-support-design-chip', 'design-chip'],
    'design-circularreveal': ['android-support-design-circularreveal', 'design-circularreveal'],
    'design-circularreveal-cardview': ['android-support-design-circularreveal-cardview', 'design-circularreveal-cardview'],
    'design-circularreveal-coordinatorlayout': ['android-support-design-circularreveal-coordinatorlayout', 'design-circularreveal-coordinatorlayout'],
    'design-color': ['android-support-design-color', 'design-color'],
    'design-dialog': ['android-support-design-dialog', 'design-dialog'],
    'design-drawable': ['android-support-design-drawable', 'design-drawable'],
    'design-expandable': ['android-support-design-expandable', 'design-expandable'],
    'design-floatingactionbutton': ['android-support-design-floatingactionbutton', 'design-floatingactionbutton'],
    'design-internal': ['android-support-design-internal', 'design-internal'],
    'design-math': ['android-support-design-math', 'design-math'],
    'design-resources': ['android-support-design-resources', 'design-resources'],
    'design-ripple': ['android-support-design-ripple', 'design-ripple'],
    'design-snackbar': ['android-support-design-snackbar', 'design-snackbar'],
    'design-stateful': ['android-support-design-stateful', 'design-stateful'],
    'design-textfield': ['android-support-design-textfield', 'design-textfield'],
    'design-theme': ['android-support-design-theme', 'design-theme'],
    'design-transformation': ['android-support-design-transformation', 'design-transformation'],
    'design-typography': ['android-support-design-typography', 'design-typography'],
    'design-widget': ['android-support-design-widget', 'design-widget'],
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
    def __init__(self, key, group_id, artifact_id, version, root, repo_dir, file):
        self.key = key
        self.group_id = group_id
        self.artifact_id = artifact_id
        self.version = version
        self.root = root
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
    os.rename(src_path, dst_path)


def detect_artifacts(repo_dirs):
    maven_lib_info = {}

    # Find the latest revision for each artifact, remove others
    for repo_dir in repo_dirs:
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
                    if artifact_id in maven_to_make:
                        key = artifact_id
                    elif group_artifact in maven_to_make:
                        key = group_artifact
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


def transform_maven_repo(repo_dirs, update_dir, extract_res=True):
    cwd = os.getcwd()

    # Use a temporary working directory.
    working_dir = os.path.join(cwd, 'support_tmp')
    maven_lib_info = detect_artifacts(repo_dirs)

    if not maven_lib_info:
        print_e('Failed to detect artifacts')
        return False

    for info in maven_lib_info.values():
        transform_maven_lib(working_dir, info, extract_res)

    with open(os.path.join(working_dir, 'Android.mk'), 'w') as f:
        args = ["pom2mk", "-static-deps", "-sdk-version", "current"]
        args.extend(["-rewrite=^" + name + "$=" + maven_to_make[name][0] for name in maven_to_make])
        args.extend(["."])
        subprocess.check_call(args, stdout=f, cwd=working_dir)

    # Replace the old directory.
    output_dir = os.path.join(cwd, update_dir)
    mv(working_dir, output_dir)
    return True


def transform_maven_lib(working_dir, artifact_info, extract_res):
    # Move library into working dir
    new_dir = os.path.join(working_dir, os.path.relpath(artifact_info.root, artifact_info.repo_dir))
    mv(artifact_info.root, new_dir)

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

    if extract_res:
        target_dir = os.path.join(working_dir, make_dir_name)
        if not os.path.exists(target_dir):
            os.makedirs(target_dir)

        if maven_lib_type == "aar":
            process_aar(artifact_file, target_dir)

    if maven_lib_type == "aar":
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
    print('Fetching %s from %s...' % (artifact_path, target))
    fetch_cmd = [FETCH_ARTIFACT, '--bid', str(build_id), '--target', target, artifact_path]
    try:
        subprocess.check_output(fetch_cmd, stderr=subprocess.STDOUT)
    except subprocess.CalledProcessError:
        print_e('FAIL: Unable to retrieve %s artifact for build ID %s' % (artifact_path, build_id))
        print_e('Please make sure you are authenticated for build server access!')
        return None
    return artifact_path


def extract_artifact(artifact_path):
    # Unzip the repo archive into a separate directory.
    repo_dir = os.path.basename(artifact_path)[:-4]
    with zipfile.ZipFile(artifact_path) as zipFile:
        zipFile.extractall(repo_dir)
    return repo_dir


def fetch_and_extract(target, build_id, file):
    artifact_path = fetch_artifact(target, build_id, file)
    if not artifact_path:
        return None
    return extract_artifact(artifact_path)


def update_support(target, build_id):
    repo_file = 'top-of-tree-m2repository-%s.zip' % build_id.fs_id
    repo_dir = fetch_and_extract(target, build_id.url_id, repo_file)
    if not repo_dir:
        print_e('Failed to extract Support Library repository')
        return False

    # Transform the repo archive into a Makefile-compatible format.
    return transform_maven_repo([repo_dir], support_dir)

def update_jetifier(target, build_id):
    repo_file = 'jetifier-standalone.zip'
    repo_dir = fetch_and_extract(target, build_id.url_id, repo_file)
    if not repo_dir:
        print_e('Failed to extract Jetifier')
        return False

    rm(jetifier_dir)
    mv(repo_dir, jetifier_dir)
    os.chmod(os.path.join(jetifier_dir, 'jetifier-standalone', 'bin', 'jetifier-standalone'), 0o755)
    return True

def update_toolkit(target, build_id):
    repo_dir = fetch_and_extract(target, build_id.url_id, 'top-of-tree-m2repository-%s.zip' % build_id.fs_id)
    if not repo_dir:
        print_e('Failed to extract App Toolkit repository')
        return False

    # Transform the repo archive into a Makefile-compatible format.
    return transform_maven_repo([repo_dir], os.path.join(extras_dir, 'app-toolkit'))


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
    return transform_maven_repo([layout_dir, solver_dir],
                                os.path.join(extras_dir, 'constraint-layout'), extract_res=False)


def update_design(file):
    design_dir = extract_artifact(file)
    if not design_dir:
        print_e('Failed to extract Design Library repositories')
        return False

    # Don't bother extracting resources -- this should only be used with AAPT2.
    return transform_maven_repo([design_dir],
                                os.path.join(extras_dir, 'material-design'), extract_res=False)


def extract_to(zip_file, paths, filename, parent_path):
    zip_path = next(filter(lambda path: filename in path, paths))
    src_path = zip_file.extract(zip_path)
    dst_path = path(parent_path, filename)
    mv(src_path, dst_path)


def update_sdk_repo(target, build_id):
    platform = 'darwin' if 'mac' in target else 'linux'
    artifact_path = fetch_artifact(
        target, build_id.url_id, 'sdk-repo-%s-platforms-%s.zip' % (platform, build_id.fs_id))
    if not artifact_path:
        return False

    with zipfile.ZipFile(artifact_path) as zipFile:
        paths = zipFile.namelist()

        extract_to(zipFile, paths, 'android.jar', current_path)
        extract_to(zipFile, paths, 'uiautomator.jar', current_path)
        extract_to(zipFile, paths, 'framework.aidl', current_path)
        extract_to(zipFile, paths, 'optional/android.test.base.jar', current_path)
        extract_to(zipFile, paths, 'optional/android.test.mock.jar', current_path)
        extract_to(zipFile, paths, 'optional/android.test.runner.jar', current_path)

        # Unclear if this is actually necessary.
        extract_to(zipFile, paths, 'framework.aidl', system_path)

    artifact_path = fetch_artifact(target, build_id, 'core.current.stubs.jar')
    if not artifact_path:
        return False

    mv(artifact_path, path(current_path, 'core.jar'))
    return True


def update_system(target, build_id):
    artifact_path = fetch_artifact(target, build_id.url_id, 'android_system.jar')
    if not artifact_path:
        return False

    mv(artifact_path, path(system_path, 'android.jar'))

    artifact_path = fetch_artifact(target, build_id.url_id, 'android.test.mock.stubs_system.jar')
    if not artifact_path:
        return False

    mv(artifact_path, path(system_path, 'optional/android.test.mock.jar'))

    return True


def update_buildtools(target, arch, build_id):
    artifact_path = fetch_and_extract(target, build_id.url_id,
                                   "sdk-repo-%s-build-tools-%s.zip" % (arch, build_id.fs_id))
    if not artifact_path:
        return False

    top_level_dir = os.listdir(artifact_path)[0]
    src_path = os.path.join(artifact_path, top_level_dir)
    dst_path = path(buildtools_dir, arch)
    mv(src_path, dst_path)

    # Move all top-level files to /bin and make them executable
    bin_path = path(dst_path, 'bin')
    top_level_files = filter(lambda e: os.path.isfile(path(dst_path, e)), os.listdir(dst_path))
    for file in top_level_files:
        src_file = path(dst_path, file)
        dst_file = path(bin_path, file)
        mv(src_file, dst_file)
        os.chmod(dst_file, 0o755)

    # Remove renderscript
    rm(path(dst_path, 'renderscript'))

    return True


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
    raise Exception('Updating this set of prebuilts requires <source> to be a build id, not "' + source + '"')
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
  else:
    raise Exception('Updating this set of prebuilts requires <source> to be file, not a numeric build id')

parser = argparse.ArgumentParser(
    description=('Update current prebuilts'))
parser.add_argument(
    'source',
    help='Build server build ID or local Maven ZIP file')
parser.add_argument(
    '-d', '--design', action="store_true",
    help='If specified, updates only the Design Library')
parser.add_argument(
    '-c', '--constraint', action="store_true",
    help='If specified, updates only Constraint Layout')
parser.add_argument(
    '-s', '--support', action="store_true",
    help='If specified, updates only the Support Library')
parser.add_argument(
    '-j', '--jetifier', action="store_true",
    help='If specified, updates only Jetifier')
parser.add_argument(
    '-t', '--toolkit', action="store_true",
    help='If specified, updates only the App Toolkit')
parser.add_argument(
    '-p', '--platform', action="store_true",
    help='If specified, updates only the Android Platform')
parser.add_argument(
    '-b', '--buildtools', action="store_true",
    help='If specified, updates only the Build Tools')
args = parser.parse_args()
args.file = True
if not args.source:
    parser.error("You must specify a build ID or local Maven ZIP file")
    sys.exit(1)
if not (args.support or args.platform or args.constraint or args.toolkit or args.buildtools \
                or args.design or args.jetifier):
    parser.error("You must specify at least one target to update")
    sys.exit(1)
if (args.support or args.constraint or args.toolkit) and which('pom2mk') is None:
    parser.error("Cannot find pom2mk in path; please run lunch to set up build environment")
    sys.exit(1)

try:
    # Make sure we don't overwrite any pending changes.
    subprocess.check_call(['git', 'diff', '--quiet', '--', '**'])
    subprocess.check_call(['git', 'diff', '--quiet', '--cached', '--', '**'])
except subprocess.CalledProcessError:
    print_e('FAIL: There are uncommitted changes here; please revert or stash')
    sys.exit(1)

try:
    components = None
    if args.constraint:
        if update_constraint('studio', getBuildId(args)):
            components = append(components, 'Constraint Layout')
            print_e('Failed to update Constraint Layout, aborting...')
        else:
            sys.exit(1)
    if args.support:
        if update_support('support_library', getBuildId(args)):
            components = append(components, 'Support Library')
        else:
            print_e('Failed to update Support Library, aborting...')
            sys.exit(1)
    if args.jetifier:
        if update_jetifier('support_library', getBuildId(args)):
            components = append(components, 'Jetifier')
        else:
            print_e('Failed to update Jetifier, aborting...')
            sys.exit(1)
    if args.toolkit:
        if update_toolkit('support_library_app_toolkit', getBuildId(args)):
            components = append(components, 'App Toolkit')
        else:
            print_e('Failed to update App Toolkit, aborting...')
            sys.exit(1)
    if args.platform:
        if update_sdk_repo('sdk_phone_armv7-sdk_mac', getBuildId(args)) \
                and update_system('sdk_phone_armv7-sdk_mac', getBuildId(args)):
            components = append(components, 'platform SDK')
        else:
            print_e('Failed to update platform SDK, aborting...')
            sys.exit(1)
    if args.design:
        if update_design(getFile(args)):
            components = append(components, 'Design Library')
        else:
            print_e('Failed to update platform SDK, aborting...')
            sys.exit(1)
    if args.buildtools:
        if update_buildtools('sdk_phone_armv7-sdk_mac', 'darwin', getBuildId(args)) \
                and update_buildtools('sdk_phone_x86_64-sdk', 'linux', getBuildId(args)) \
                and update_buildtools('sdk_phone_armv7-win_sdk', 'windows', getBuildId(args)):
            components = append(components, 'build tools')
        else:
            print_e('Failed to update build tools, aborting...')
            sys.exit(1)

    # Commit all changes.
    subprocess.check_call(['git', 'add', current_path])
    subprocess.check_call(['git', 'add', system_path])
    subprocess.check_call(['git', 'add', buildtools_dir])
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
                ['git', 'commit', '-m', 'COMMIT TO REVERT - RESET ME!!!'], stdout=bitbucket)
            subprocess.check_call(['git', 'reset', '--hard', 'HEAD~1'], stdout=bitbucket)
    except subprocess.CalledProcessError:
        print_e('ERROR: Failed cleaning up, manual cleanup required!!!')
