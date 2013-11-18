#!/bin/bash

ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

# Install brews from _brews-file
cat _brews | xargs brew install