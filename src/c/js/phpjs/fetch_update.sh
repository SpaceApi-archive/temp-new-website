#!/bin/bash

# Maybe there's a better solution?
# http://stackoverflow.com/questions/2425059/how-to-pull-specific-directory-with-git

git clone --depth=1 git://github.com/kvz/phpjs.git
mv phpjs/functions .
rm -rf phpjs
