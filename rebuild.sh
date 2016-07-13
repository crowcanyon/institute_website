#!/bin/bash
## Rebuild

jekyll clean
jekyll clean
rm -r people/associates
jekyll build
rm -r people/associates
cp -r _site/people/associates people

