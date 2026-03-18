#!/usr/bin/env bash
# Stores color/style/cursor escape codes used by the format tool
#
# All the variables stored in this file are ANSI escape codes.

if [[ -v style_color_lib_sourced ]]; then
    return 0
fi
style_color_lib_sourced=1

style_reset=$'\e[0m'

# colors
style_black=$'\e[30m'
style_red=$'\e[31m'
style_green=$'\e[32m'
style_yellow=$'\e[33m'
style_blue=$'\e[34m'
style_magenta=$'\e[35m'
style_cyan=$'\e[36m'
style_white=$'\e[37m'

# Bright colors
style_bblack=$'\e[90m'
style_bred=$'\e[91m'
style_bgreen=$'\e[92m'
style_byellow=$'\e[93m'
style_bblue=$'\e[94m'
style_bmagenta=$'\e[95m'
style_bcyan=$'\e[96m'
style_bwhite=$'\e[97m'

# Format options
style_bold=$'\e[1m'
style_dim=$'\e[2m'
style_italic=$'\e[3m'
style_underline=$'\e[4m'
style_blink=$'\e[5m'
style_reverse=$'\e[7m'
style_strikethrough=$'\e[9m'

# Cursor visibility
style_cursor_hide=$'\e[?25l'
style_cursor_show=$'\e[?25h'

# Save/restore cursor position
style_cursor_save=$'\e[s'
style_cursor_restore=$'\e[u'

# Clear operations
style_clear_screen=$'\e[2J'
style_clear_screen_down=$'\e[0J'
style_clear_screen_up=$'\e[1J'
style_clear_line=$'\e[2K'
style_clear_line_right=$'\e[0K'
style_clear_line_left=$'\e[1K'

# Cursor movement helpers
style_cursor_home=$'\e[H'
style_cursor_up=$'\e[A'
style_cursor_down=$'\e[B'
style_cursor_right=$'\e[C'
style_cursor_left=$'\e[D'
style_cursor_next_line=$'\e[E'
style_cursor_prev_line=$'\e[F'
style_cursor_col1=$'\e[G'
