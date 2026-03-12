#!/usr/bin/env bash
#
# useful printf wrappers to format
# help menus in a pretty way
# gives allingment to options
# decorates titles
# emphises examples

HELP_MENU_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
source "$HELP_MENU_DIR/format_color.sh"

title(){}
header(){}
option(){}
example(){}
