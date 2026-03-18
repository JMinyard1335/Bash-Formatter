#!/usr/bin/env bash
#
# useful printf wrappers to format
# help menus in a pretty way
# gives alignment to options
# decorates titles
# emphasizes examples

# Source Gurard, prevents multiple sources of same file
if [[ -v style_helpmenu_lib_sourced ]]; then
    return 0
fi
style_helpmenu_lib_sourced=1

bashlib_helpmenu_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
source "${bashlib_helpmenu_dir}/bashlib_color.bash"

# total width of the help menu
style_helpmenu_width=80

# width used for left-column alignment in option/example rows
style_helpmenu_pad=28

# helpmenu_print_title <text>
# Prints a centered major help title
# Example:
#   helpmenu_print_title "Formatter Help"
helpmenu_print_title() {
    local text="$1"
    local text_len="" pad=""

    text_len=${#text}
    pad=$(( (style_helpmenu_width - text_len) / 2 ))
    (( pad < 0 )) && pad=0

    printf "\n%*s%b%s%b\n" \
        "$pad" "" "${style_bold}${style_cyan}" "$text" "${style_reset}"
}

# helpmenu_print_subtitle <text>
# Prints a centered subtitle without color styling.
# Example:
#   helpmenu_print_subtitle "Formatter by J. Minyard"
helpmenu_print_subtitle() {
    local text="$1"
    local text_len="" pad=""

    text_len=${#text}
    pad=$(( (style_helpmenu_width - text_len) / 2 ))
    (( pad < 0 )) && pad=0

    printf "%*s%s\n" "$pad" "" "$text"
}

# helpmenu_print_header <text>
# Prints a section header
# Example:
#   helpmenu_print_header "Options"
helpmenu_print_header() {
    local text="$1"
    printf "\n%b%s:%b\n" \
        "${style_bold}${style_cyan}" "$text" "${style_reset}"
}

# helpmenu_print_option <flags> <description>
# Prints an aligned option row
# Example:
#   helpmenu_print_option "-h, --help" "Show this help message"
helpmenu_print_option() {
    local flags="$1"
    local desc="$2"

    printf "  %b%-${style_helpmenu_pad}s%b %s\n" \
        "${style_green}" "$flags" "${style_reset}" "$desc"
}

# helpmenu_print_example <tool> <args>
# Prints an aligned example row
# Example:
#   helpmenu_print_example "formatter" "format file.txt"
helpmenu_print_example() {
    local tool="$1"
    local args="$2"

    printf "  %b%-10s%b%b%s%b\n" \
        "${style_magenta}" "$tool" "${style_reset}" \
        "${style_yellow}" "$args" "${style_reset}"
}
