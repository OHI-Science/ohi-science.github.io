#!/usr/bin/env bash
set -e # halt script on error

bundle exec jekyll build
# htmlproof reporting bad links when ok, so just commenting off
#bundle exec htmlproof --only-4xx ./_site
