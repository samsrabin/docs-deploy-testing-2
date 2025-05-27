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

for f in $(find * -name "*.html"); do 
    # Check whether target page exists
    target_page="https://samsrabin.github.io/docs-deploy-testing/${f}"
    returncode=$(curl -s -o /dev/null -w "%{http_code}" "https://escomp.github.io/ctsm-docs/versions/master/html/users_guide/using-mesh-maker/index.html")
    if [[ ${returncode} -ne 200 ]]; then
        echo "$target_page returns $returncode. Handle this."
        break
    else
        sed "s@RELPATH@$f@g" ../redirect_template.html > $f
    fi
done

```