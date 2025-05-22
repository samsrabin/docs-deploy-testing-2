#!/bin/bash
set -e
set -x

rm -rf _publish*

# Build all docs using container
rm -rf _build _publish
d1="$PWD/_publish_container"
./build_docs_all_versions -d --site-root "$d1"
mv _publish _publish_container

# Build all docs using ctsm_pylib
rm -rf _build _publish
d2="$PWD/_publish_nocontainer"
conda run -n ctsm_pylib ./build_docs_all_versions --site-root "$d2"
mv _publish "${d2}"

# Make sure container version is identical to no-container version
diff -qr "${d1}" "${d2}"

# # Check that -r -v works
# rm -rf _build_docker
# ./build_docs -r _build_docker -v latest -d -c

# # Check that -b works
# rm -rf _build_docker
# ./build_docs -b _build_docker -d -c

# # Check that pure Makefile method works
# cd doc-builder/test
# conda run -n ctsm_pylib make test

exit 0