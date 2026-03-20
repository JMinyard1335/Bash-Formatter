# bashlib-style API reference sheet

## Table of contents
- [Commands](#comands)
	- [Print](#print)
	- [Menu](#menu)
	- [List](#list)
- [Source Library](#source-files)
	- [Print Library](#print-library)
	- [Menu Library](#menu-library)

## Commands

Untill I have time to update this to be nicer to read here's the help menu for the print command.

### Print
```bash
Usage:
  style print [options] <message...>

Options:
  -c, --codes <ansi-codes>     Apply ANSI escape code(s) to message text
  -t, --tag <tag>              Prefix message with [tag]:
  -n, --newline                End output with newline
  -e, --error                  Print predefined error message format
  -w, --warn                   Print predefined warning message format
  -s, --success                Print predefined success message format
  -l, --log                    Print predefined log message format
  -h, --help                   Show this help message

Examples:
  style     print --error "something failed"
  style     print --warn "disk usage is high"
  style     print --success "done"
  style     print --codes "\e[1;34m" --tag "Info" --newline "starting up"
```

### Menu
Used to preview the output of a helpmenu print function in the command line.

```bash
Usage:
  style menu [options]

Options:
  -t, --title <text>           Print a centered title
  -s, --subtitle <text>        Print a centered subtitle (no color)
  -H, --header <text>          Print a section header
  -o, --option <flags>         Print an option row (requires --desc)
  -d, --desc <text>            Description used with --option
  -e, --example <tool>         Print an example row (requires --args)
  -a, --args <text>            Args text used with --example
  -h, --help                   Show this help message

Examples:
  style     menu --title "Formatter Help"
  style     menu --subtitle "Fast bash styling"
  style     menu -H "Options"
  style     menu --option "-h, --help" --desc "Show this help message"
  style     menu --example "formatter" --args "style print --help"
```

### List

for those curious or needed to get a quick list of the ANSI escape codes.

```bash
Usage:
  style list <type> [options]

Types:
  colors                       List standard ANSI colors
  format                       List text formatting codes
  cursor                       List cursor control codes
  screen                       List screen/line clear codes

Options:
  -b, --bright                 Use bright color list (colors only)
  -h, --help                   Show this help message

Examples:
  style     list colors
  style     list colors --bright
  style     list format
  style     list cursor
  style     list screen
```


## Source Files
Bellow are the api references for the underlying libraries. This is the best way to use this tool in your own scripts.

### Print Library

The print API has two kinds of functions generic print functions such as [print, print_tag, println, println_tag,]
and then what i'm calling templates or debug functions [print_error, print_success, print_warn, print_log]. These 
functions have a structured out puts and are great in simple program output.

```bash
print <codes> <message>
println <codes> <message>
print_tag <code> <tag> <message>
println_tag <code> <tag> <message>

print_error <message>
print_warn <message>
print_success <message>
print_log <message>
```


### Menu Library

The menu API is used more accurately called the helpmenu api, used to craft colorful help menu.

```bash
helpmenu_print_title <title>
helpmenu_print_subtitle <subtitle>
helpmenu_print_header <header>
helpmenu_print_option <flags> <description>
helpmenu_print_example <command> <args>
```
