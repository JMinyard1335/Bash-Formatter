#!/usr/bin/env bash
# Source file for all the lib functions

if  [[ -v bashlib_style_sourced ]]; then
    return 0
fi
bashlib_style_sourced=1

bashlib_style_source_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
source "${bashlib_style_source_dir}/internal/bashlib_print.bash"
source "${bashlib_style_source_dir}/internal/bashlib_menu.bash"
source "${bashlib_style_source_dir}/internal/bashlib_color.bash"
