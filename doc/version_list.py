"""
Define the versions we want to build
"""
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
