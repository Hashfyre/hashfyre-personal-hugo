#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"
PWD=`pwd`
# cleanup
rm -rf public/

# create public
mkdir public

# Build the project.
#hugo # if using a theme, replace by `hugo -t <yourtheme>`
hugo -t base16

# Go To Public folder
cd public

# Add changes to git.
git add -A

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push --force origin master

# Come Back
cd ..

## Main site update
# cleanup main-site
EXCLUDE="CNAME|LICENSE|README.md"
cd ../hashfyre.github.io/
DEL_LIST=`ls | egrep -v "${EXCLUDE}"`
echo "[INFO] Files to delete: ${DEL_LIST}"
rm -rfv "${DEL_LIST}"

# copy
cp -R ../hashfyre-personal-hugo/public/* ./

# Add changes to git.
git add -A

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push --force origin master

# come back
cd ${PWD}
