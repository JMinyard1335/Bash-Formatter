#!/usr/bin/env bash
# Run this script to see the default output of each command.

repo_root="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
style_bin="${repo_root}/style"

"${style_bin}" print --codes "\e[1;36m" --tag "Info" --newline "hello world"
"${style_bin}" print --success "Hello World"
"${style_bin}" print --warn "hello world"
"${style_bin}" print --error "hello world" || true
"${style_bin}" print --log "hello world"

"${style_bin}" menu --title "hello world"
"${style_bin}" menu --subtitle "subtitle text"
"${style_bin}" menu --header "Options"
"${style_bin}" menu --option "-h | --help" --desc "hello world"
"${style_bin}" menu --option "-v | --version" --desc "prints the version"
"${style_bin}" menu --header "examples"
"${style_bin}" menu --example "hello" --args "-h '\$USER'"

"${style_bin}" list colors
"${style_bin}" list colors --bright
"${style_bin}" list format
"${style_bin}" list cursor
"${style_bin}" list screen

