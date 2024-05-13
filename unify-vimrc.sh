#!/bin/bash

# Combine the first four lines of init.vimrc with the specified files
(cat init.vimrc | head -n 4 ; cat plug.vimrc general.vimrc mappings.vimrc functions.vimrc plugins.vimrc) > unified.vim

echo "Unified vimrc file created: unified.vim"
