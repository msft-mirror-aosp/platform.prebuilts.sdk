#!/usr/bin/python

import os, sys, getopt, zipfile, re
from shutil import copyfile, rmtree

output_path = 'current/support'

# Does not import support-v4, which is handled as a separate Android.mk (../support-v4) to
# statically include dependencies. Similarly, the support-v13 module is imported as
# support-v13-nodeps and then handled as a separate Android.mk (../support-v13) to statically
# include dependencies.
maven_to_make = {
    'animated-vector-drawable':     ['android-support-animatedvectordrawable',      'graphics/drawable'],
    'appcompat-v7':                 ['android-support-v7-appcompat',                'v7/appcompat'],
    'cardview-v7':                  ['android-support-v7-cardview',                 'v7/cardview'],
    'customtabs':                   ['android-support-customtabs',                  'customtabs'],
    'design':                       ['android-support-design',                      'design'],
    'exifinterface':                ['android-support-exifinterface',               'exifinterface'],
    'gridlayout-v7':                ['android-support-v7-gridlayout',               'v7/gridlayout'],
    'leanback-v17':                 ['android-support-v17-leanback',                'v17/leanback'],
    'mediarouter-v7':               ['android-support-v7-mediarouter',              'v7/mediarouter'],
    'multidex':                     ['android-support-multidex',                    'multidex/library'],
    'multidex-instrumentation':     ['android-support-multidex-instrumentation',    'multidex/instrumentation'],
    'palette-v7':                   ['android-support-v7-palette',                  'v7/palette'],
    'percent':                      ['android-support-percent',                     'percent'],
    'preference-leanback-v17':      ['android-support-v17-preference-leanback',     'v17/preference-leanback'],
    'preference-v14':               ['android-support-v14-preference',              'v14/preference'],
    'preference-v7':                ['android-support-v7-preference',               'v7/preference'],
    'recommendation':               ['android-support-recommendation',              'recommendation'],
    'recyclerview-v7':              ['android-support-v7-recyclerview',             'v7/recyclerview'],
    'support-annotations':          ['android-support-annotations',                 'annotations'],
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
    'support-v13':                  ['android-support-v13-nodeps',                  'v13-nodeps'],
    'support-vector-drawable':      ['android-support-vectordrawable',              'graphics/drawable'],
    'transition':                   ['android-support-transition',                  'transition'],
    'wear':                         ['android-support-wear',                        'wear']
}

# Always remove these files.
blacklist_files = [
    'annotations.zip',
    'public.txt',
    'R.txt',
    'AndroidManifest.xml'
]

artifact_pattern = re.compile(r"^(.+?)-\d+\.\d+\.\d+(?:-\w+\d*)?\.(jar|aar)$")

def main(argv):
    try:
        opts, args = getopt.getopt(argv, "hs:", ["support="])
    except getopt.GetoptError:
        print 'usage'
        sys.exit(2)

    for opt, arg in opts:
        if opt == '-h':
            print 'usage'
            sys.exit()
        elif opt in ("-s", "--support"):
            support_file = arg

    if support_file:
        extract_support(support_file)


def touch(fname, times=None):
    with open(fname, 'a'):
        os.utime(fname, times)


def extract_support(file):
    cwd = os.getcwd()

    # Extract local Maven repo to temporary directory.
    temp_dir = os.path.join(cwd, 'tmp')
    if os.path.exists(temp_dir):
        rmtree(temp_dir)
    with zipfile.ZipFile(file) as zip:
        zip.extractall(temp_dir)

    # Use a temporary working directory.
    working_dir = os.path.join(cwd, 'support_tmp')
    if os.path.exists(working_dir):
        rmtree(working_dir)
    os.mkdir(working_dir)

    for root, dirs, files in os.walk(temp_dir):
        for file in files:
            matcher = artifact_pattern.match(file)
            if matcher:
                maven_lib_name = matcher.group(1)
                maven_lib_type = matcher.group(2)

                if maven_lib_name in maven_to_make:
                    make_lib_name = maven_to_make[maven_lib_name][0]
                    make_dir_name = maven_to_make[maven_lib_name][1]
                    artifact_file = os.path.join(root, file)
                    target_dir = os.path.join(working_dir, make_dir_name)
                    if not os.path.exists(target_dir):
                        os.makedirs(target_dir)

                    if maven_lib_type == "aar":
                        process_aar(artifact_file, target_dir, make_lib_name)
                    else:
                        target_file = os.path.join(target_dir, make_lib_name + ".jar")
                        os.rename(artifact_file, target_file)

                    print maven_lib_name, "->", make_lib_name
                else:
                    print maven_lib_name, "unknown artifact, skipping..."

    # Replace the old directory.
    output_dir = os.path.join(cwd, output_path)
    if os.path.exists(output_dir):
        rmtree(output_dir)
    os.rename(working_dir, output_dir)

    # Clean up.
    rmtree(temp_dir)

def process_aar(artifact_file, target_dir, make_lib_name):
    # Extract AAR file to target_dir.
    with zipfile.ZipFile(artifact_file) as zip:
        zip.extractall(target_dir)

    # Rename classes.jar to match the make artifact
    classes_jar = os.path.join(target_dir, "classes.jar")
    if os.path.exists(classes_jar):
        # If it has resources, it needs a libs dir.
        res_dir = os.path.join(target_dir, "res")
        if os.path.exists(res_dir) and os.listdir(res_dir):
            libs_dir = os.path.join(target_dir, "libs")
            if not os.path.exists(libs_dir):
                os.mkdir(libs_dir)
        else:
            libs_dir = target_dir
        target_jar = os.path.join(libs_dir, make_lib_name + ".jar")
        os.rename(classes_jar, target_jar)

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


if __name__ == "__main__":
    main(sys.argv[1:])