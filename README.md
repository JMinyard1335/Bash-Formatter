# bashlib-style

`bashlib-style` is a Bash styling toolkit with a single entrypoint command: `style`.

It provides:

- `style print` for styled log and status output
- `style menu` for formatted help menu lines

## Quick Start

```bash
git clone "https://github.com/JMinyard1335/bashlib-style.git"
cd bashlib-style
chmod +x style 
./style --help
```

Run the demo script:

```bash
./test/example.sh
```

### Install to system.

Use my [installer](https://github.com/JMinyard1335/bashlib-installer) to eaisly install and manage this tool. This is an easy way to install all of my bash tools and saves me the trouble of having to write or copy the same install script into every project.

Once the installer is installed simply run

```bash
installer install <path to style project>
```

and you are good to go!!
If you want a global install please see the installer help menu with 

```bash
installer help
```

## Command Overview

```bash
style <command> [args...]
```

Commands:

- `print`: styled output
- `menu`: help/menu formatting output
- `help`: usage text
- `version`: print tool version

## `style print`

```bash
style print [options] <message...>
```

Options:

- `-c, --codes <ansi-codes>`: apply ANSI escape code(s)
- `-t, --tag <tag>`: prefix with `[tag]:`
- `-n, --newline`: force newline output
- `-e, --error`: predefined error output (stderr, exit code 1)
- `-w, --warn`: predefined warning output (stderr)
- `-s, --success`: predefined success output
- `-l, --log`: predefined log output
- `-h, --help`: print usage

Examples:

```bash
style print --error "could not open config"
style print --warn "disk usage is high"
style print --success "build complete"
style print --log "watcher started"
style print --codes "\e[1;36m" --tag "Info" --newline "starting service"
```

## `style menu`

```bash
style menu [options]
```

Options:

- `-t, --title <text>`: print title line
- `-s, --subtitle <text>`: print centered subtitle line (no color)
- `-H, --header <text>`: print header line
- `-o, --option <flags>`: option flags text (requires `--desc`)
- `-d, --desc <text>`: option description
- `-e, --example <tool>`: example tool name (requires `--args`)
- `-a, --args <text>`: example args text
- `-h, --help`: print usage

Examples:

```bash
style menu --title "My Tool"
style menu --subtitle "Fast shell styling"
style menu -H "Options"
style menu --option "-h, --help" --desc "Show help"
style menu --example "my-tool" --args "style print --success done"
```

## Demo Script

The current demo is in `test/example.sh` and uses the same flag-based APIs listed above.
