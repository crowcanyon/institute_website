#!/bin/bash
## Rebuild

jekyll clean
jekyll clean
rm -r people/associates
jekyll build
rm -r people/associates
cp -r docs/people/associates people

