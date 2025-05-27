# Documentation has moved

Please find the new CTSM documentation at https://escomp.github.io/CTSM.

```bash
git clone -b gh-pages git@github.com:ESCOMP/ctsm-docs.git
cd ctsm-docs
git lfs fetch --all && git lfs pull && git lfs checkout
rm -rf .git
cd ..
git add **
cd ctsm-docs

../redirect.sh

# Add links for master versions

```