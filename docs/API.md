# bashlib-style API reference sheet

## Commands

## Source Files
Bellow are the api references for the underlying libraries. This is the best way to use this tool in your own scripts.

### Print

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


### Menu

The menu API is used more accurately called the helpmenu api, used to craft colorful help menu.

```bash
helpmenu_print_title <title>
helpmenu_print_subtitle <subtitle>
helpmenu_print_header <header>
helpmenu_print_option <flags> <description>
helpmenu_print_example <command> <args>
```
