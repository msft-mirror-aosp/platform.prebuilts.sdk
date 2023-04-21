This directory contains the api txt files for finalized sdk extension versions.
Note that the extension versions are distinct from Android API Levels, and
the version numbers evolve independently from each other.

The prebuilt_apis module is responsible for figuring out which version is the
latest finalized version for each API surface.

**Version history**:

- 1: Finalized together with Android S / 31 (all modules)
- 2: Finalized in March 2022 between S and T (mediaprovider, sdkextensions)
- 3: Finalized together with Android T / 33 (all modules)
- 4: Finalized in September 2022 between T and U (adservices, sdkextensions, tethering)
- 5: Finalized in November 2022 between T and U (adservices, mediaprovider)
- 6: Finalized in April 2023 between T and U (adservices)
- 7: Finalized together with Android U / 34 (all modules)
