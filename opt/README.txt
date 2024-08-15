Optional Platform Prebuilt APIs

These prebuilt APIs refer to those *not* included in the core platform
(i.e. android.jar) but which may be present, for example, on specific
devices and/or form-factors (e.g. Wear specific APIs provided by the
wear-sdk.jar).

The convention used for optional platform prebuilt APIs located here is:

<module>/<version>

Where *module* represents the device or form-factor proving the API and
*version* represents the release version qualifier associated with the
given APIs - for example:

`prebuilts/sdk/opt/wear/33.4` - corresponds to the wear-sdk API provided via
the 4th Wear QPR released on top of the platform API level 33.

Note that all APIs added here should use the `prebuilt_apis` module so
as to ensure that the prebuilt APIs conform to established standards w.r.t
compatibility and change control. As such, it is expected that every module
will include a `module/Android.bp` file containing their `prebuilt_apis`
definition. Corresponingly, the <version> directories should match the
respective defintions for `api_dirs` and the contents/structure of each
version dir should match the structure expected by the `prebuilt_api` module.

https://source.android.com/docs/setup/build/java-library#maintaining-backward-compatibility
