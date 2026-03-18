#!/usr/bin/env bash
# This file holds the print functions
#
# These functions simply style things for stdout/stderr.

# Source Gurard, prevents multiple sources of same file
if [[ -v style_print_lib_sourced ]]; then
    return 0
fi
style_print_lib_sourced=1

bashlib_print_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
source "${bashlib_print_dir}/bashlib_color.bash"

# print  <escape-codes?> <message>
# Takes in optional ANSI escape code and a message
# the codes if any are provided are applied to the message
# styles are applied to the whole message
# does not print a new line
print(){
    local message="" codes=""
    
    if [ "$#" -eq  1 ]; then
	message="$1"
    elif [ "$#" -eq 2 ]; then
	message="$2"
	codes="$1"
    else
	echo -e "${style_bold}${style_red}[Error]${style_reset}: Invalid number of args."
	return 1
    fi

    printf "%b%s${style_reset}" "$codes" "$message"
    return 0
}

# print_tag  <escape-codes?> <tag> <message>
# Takes in optional ANSI escape code and a message
# the codes if any are provided are applied to the message
# styles are applied to the whole message
# does not print a new line
print_tag(){
    local tag="" message="" codes=""
    if [ "$#" -eq  2 ]; then
	tag="$1"
	message="$2"
    elif [ "$#" -eq 3 ]; then
	codes="$1"
        tag="$2"
	message="$3"
    else
	echo -e "${style_bold}${style_red}[Error]${style_reset}: Invalid number of args."
	return 1
    fi

    printf "%b[%s]: %s${style_reset}" "$codes" "$tag" "$message"
    return 0
}

# println  <escape-codes?> <message>
# Takes in optional ANSI escape code and a message
# the codes if any are provided are applied to the message
# styles are applied to the whole message
# does not print a new line
println(){
    local message="" codes=""
    
    if [ "$#" -eq  1 ]; then
    message="$1"
    elif [ "$#" -eq 2 ]; then
	message="$2"
	codes="$1"
    else
	echo -e "${style_bold}${style_red}[Error]${style_reset}: Invalid number of args."
	return 1
    fi

    printf "%b%s${style_reset}\n" "$codes" "$message"
    return 0
}

# println_tag  <escape-codes?> <tag> <message>
# Takes in optional ANSI escape code and a message
# the codes if any are provided are applied to the message
# styles are applied to the whole message
# does not print a new line
println_tag(){
    local tag="" message="" codes=""
    if [ "$#" -eq  2 ]; then
	tag="$1"
	message="$2"
    elif [ "$#" -eq 3 ]; then
	codes="$1"
        tag="$2"
	message="$3"
    else
	echo -e "${style_bold}${style_red}[Error]${style_reset}: Invalid number of args."
	return 1
    fi

    printf "%b[%s]: %s${style_reset}\n" "$codes" "$tag" "$message"
    return 0
}

# print_error <message>
# prints an error message to stderr
print_error() {
    printf "${style_bold}${style_red}[Error]:${style_reset} %s\n" "$*" 1>&2
    return 1
}

# print_warn <message>
# prints a warning to stderr
print_warn() {
    printf "${style_bold}${style_yellow}[Warn]:${style_reset} %s\n" "$*" 1>&2
    return 0
}

# print_success <message>
# prints a success message to stdout
print_success() {
    printf "${style_bold}${style_green}[Success]:${style_reset} %s\n" "$*"
    return 0
}

# print_log <message>
# prints a log message to stdout
print_log() {
    printf "${style_cyan}[Log]:${style_reset} %s\n" "$*"
    return 0
}

# print_with_options <preset> <codes> <tag> <newline> <message>
# Routes parsed CLI options to the matching print primitive.
print_with_options() {
    local preset="$1"
    local codes="$2"
    local tag="$3"
    local newline="$4"
    local message="$5"

    case "$preset" in
        error)
            print_error "$message"
            return "$?"
            ;;
        warn)
            print_warn "$message"
            return "$?"
            ;;
        success)
            print_success "$message"
            return "$?"
            ;;
        log)
            print_log "$message"
            return "$?"
            ;;
    esac

    if [[ -n "$tag" ]]; then
        if [[ "$newline" -eq 1 ]]; then
            if [[ -n "$codes" ]]; then
                println_tag "$codes" "$tag" "$message"
            else
                println_tag "$tag" "$message"
            fi
        else
            if [[ -n "$codes" ]]; then
                print_tag "$codes" "$tag" "$message"
            else
                print_tag "$tag" "$message"
            fi
        fi
        return "$?"
    fi

    if [[ "$newline" -eq 1 ]]; then
        if [[ -n "$codes" ]]; then
            println "$codes" "$message"
        else
            println "$message"
        fi
    else
        if [[ -n "$codes" ]]; then
            print "$codes" "$message"
        else
            print "$message"
        fi
    fi

    return "$?"
}
