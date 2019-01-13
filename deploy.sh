#!/bin/sh
echo "Deploying site"

echo "Step 1: remove the public folder"
rm -rf public 

echo "Step 2: reinitialize the submodule"
git submodule init
git submodule update
cd public
git checkout master
cd ..

echo "Step 3: building the site using hugo"
hugo

echo "Step 4: commit and push the changes in the public folder"
cd public
git add -A .
git commit -m "Deployment"
git push

echo "Committing and pushing the new submodule reference"
cd ..
git add public
git commit -m "Update reference to the latest published site" public
git push

