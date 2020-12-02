#!/bin/bash
set -e

# Important!
#  - All headers that you want two number have to start with two or more hashes, e.g. '## I'm a Heading'
#  - This script will output a file named <input file name>.numbered.md
#  - Make sure you don't have any comment lines starting with '#'. They will be interpreted as headings.

# Usage:
# $ format_readme.sh path/to/README.md

function usage {
    echo "$0 <path to README.md>"
    exit 1
}

readme_path=$1

[ "$readme_path" == "" ] && usage

## auto number headings

script_file=$(which markdown-enum)
if [ "$script_file" == "" ]; then
    pip install enumerate-markdown
fi

# replace the bad hashbang in the script file
sed -i  "s|#!/home/bugabuga/anaconda3/bin/python|#!/usr/bin/python3|" $script_file

# will only number headings at least this level. Level is the number of hashes at the beginning of the line
minimum_heading_level=2
markdown-enum "$1" $minimum_heading_level "$1.numbered.md"