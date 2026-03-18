#!/usr/bin/env bash
# Run this script to see the default output of each command.
source ./lib/help_menu.sh
source ./lib/format_output.sh

log "tag" "hello world"
logln "tag" "hello world"
ok "Hello World"
error  "hello world"
warn "hello world"
title "hello world"
header "Options"
option "-h | --help" "hello world"
option "-v | --version" "prints the version"
header "examples"
example "hello" "-h '\$USER'"

