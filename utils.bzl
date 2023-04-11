# Copyright (C) 2023 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"""Constants and utility functions relating to prebuilt SDKs.
"""

load("//build/bazel/rules/common:api.bzl", "api")

# The highest numbered directory under prebuilts/sdk
_MAX_API_LEVEL = 34

# All api levels that have a prebuilt SDK.
_API_LEVELS = list(range(1, _MAX_API_LEVEL + 1)) + [api.FUTURE_API_LEVEL]

def _available_kinds_for_api_level(api_level):
    """Return the available SDK kinds (or scopes) under the given api level directory."""
    if api_level not in _API_LEVELS:
        fail("api_level %s is not one of %s" % (api_level, _API_LEVELS.join(",")))
    if api_level == api.FUTURE_API_LEVEL:
        return ["public", "system", "test", "system_server", "module", "core"]
    if api_level <= 20:
        return ["public"]
    if api_level <= 28:
        return ["public", "system"]
    if api_level == 29:
        return ["public", "system", "test"]
    if api_level <= 33:
        return ["public", "system", "test", "system_server", "module"]
    return ["public", "system", "module"]

prebuilt_sdk_utils = struct(
    MAX_API_LEVEL = _MAX_API_LEVEL,
    API_LEVELS = _API_LEVELS,
    available_kinds_for_api_level = _available_kinds_for_api_level,
)
