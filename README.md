# Documentation has moved

Please find the new CTSM documentation at https://escomp.github.io/CTSM.

```bash
git clone -b gh-pages git@github.com:ESCOMP/ctsm-docs.git docs
cd docs
rm -rf .git
cd ..
git add **
git commit -m "Add built CTSM docs"
cd docs

../redirect.sh
```
