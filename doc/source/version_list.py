"""
Define the versions we want to build
"""
import sys
import os
dir2add = os.path.join(os.path.dirname(__file__), os.pardir, "doc-builder")
if not os.path.exists(dir2add):
    raise FileNotFoundError(dir2add)
print(dir2add)
sys.path.insert(0, dir2add)
from doc_builder.version_info import VersionInfo

# Branch name, tag, or commit SHA whose version of certain files we want to preserve
LATEST_REF = "auto-version-publishing"

# List of version definitions
VERSION_LIST = [
    VersionInfo(
        short_name="latest",
        display_name="Latest development code",
        landing_version=True,
        ref=LATEST_REF,
    ),
    VersionInfo(
        short_name="release-clm5.0",
        display_name="CLM5.0",
        ref="release-clm5.0",
    ),
]
