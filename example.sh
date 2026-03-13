#!/usr/bin/env bash
# Run this script to see the default output of each command.
source ./lib/help_menu.sh
source ./lib/format_output.sh

log "tag" "hello world"
logln "tag" "hello world"
error  "hello world"
warn "hello world"
title "hello world"
option "-h" "hello world"
example "hello" "-h '\$USER'"

