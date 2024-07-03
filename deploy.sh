#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
echo 'mason.co.at' > CNAME

git init
git add -A
git commit -m 'New Deployment'
git push -f git@github.com:xCroach/mason-website.git master:gh-pages

cd -