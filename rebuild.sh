#!/bin/bash
## Rebuild

jekyll clean
jekyll clean
jekyll build
rm -r people/associates
cp -r _site/people/associates people

