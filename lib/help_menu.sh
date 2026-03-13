#!/usr/bin/env bash
#
# useful printf wrappers to format
# help menus in a pretty way
# gives alignment to options
# decorates titles
# emphasizes examples

HELP_MENU_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
source "$HELP_MENU_DIR/format_color.sh"

# total width of the help menu
HELP_MENU_WIDTH=80

# width used for left-column alignment in option/example rows
HELP_MENU_PAD=28

# Prints a centered major help title
# Example:
#   title "Formatter Help"
title() {
    local text="$1"
    local text_len pad

    text_len=${#text}
    pad=$(( (HELP_MENU_WIDTH - text_len) / 2 ))
    (( pad < 0 )) && pad=0

    printf "%*s%b%s%b\n" \
        "$pad" "" "$BOLD$CYAN" "$text" "$RESET"
}

# Prints a section header
# Example:
#   header "Options"
header() {
    local text="$1"
    printf "\n%b%s:%b\n" "$BOLD$YELLOW" "$text" "$RESET"
}

# Prints an aligned option row
# Usage:
#   option "<flags>" "<description>"
option() {
    local flags="$1"
    local desc="$2"

    printf "  %b%-${HELP_MENU_PAD}s%b %s\n" \
        "$GREEN" "$flags" "$RESET" "$desc"
}

# Prints an aligned example row
# Usage:
#   example "<tool>" "<args>"
example() {
    local tool="$1"
    local args="$2"

    printf "  %b%-${HELP_MENU_PAD}s%b %s\n" \
        "$MAGENTA" "$tool" "$RESET" "$args"
}
