#!/usr/bin/env bash
#
# these are simple output format functions
# they take all the arguments given and print the out
OUTPUT_SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
source "$OUTPUT_SCRIPT_DIR/format_color.sh"

# error <msg>
error(){
    printf "${BRED}[Error]:${RESET} %s\n" "$*"
}

# warn <msg>
warn(){
    printf "${BYELLOW}[Warn]:${RESET} %s\n" "$*"
}

# ok <msg>
ok(){
    printf "${GREEN}[Success]:${RESET} %s\n" "$*"
}

# log <tag> <msg>
log(){
    local tag="$1"
    shift
    local msg="$*"
    printf "${CYAN}[$tag]:${RESET} ${msg}"
}

# logln <tag> <msg>
logln(){
    local tag="$1"
    shift
    local msg="$*"
    
    printf "${CYAN}[$tag]:${RESET} ${msg}\n"
}
