#!/bin/bash

script_directory="$(cd "$(dirname "$0")" && pwd)"
cp $script_directory/hidden/.bash_aliases ~
