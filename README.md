# bashlib-style

`bashlib-style` is a Bash styling toolkit built around one command (`style`) and one source file (`lib/bashlib_style.bash`).

Use it in two ways:
- CLI playground for testing output in your terminal.
- Library API for scripts that need consistent styled output and help menus.

## Table of Contents

- [What You Get](#what-you-get)
- [Quick Start](#quick-start)
- [Installation](#installation)
- [Basic Usage](#basic-usage)
- [Use As A Library](#use-as-a-library)
- [API](#API)
- [Contributing](#contributing)
- [License](#license)

## What You Get

- `style print`: styled status/log output.
- `style menu`: consistent help/menu formatting lines.
- `style list`: ANSI reference lists (`colors`, `format`, `cursor`, `screen`).
- `lib/bashlib_style.bash`: source this file to use print/menu functions in your own scripts.

## Quick Start

```bash
git clone "https://github.com/JMinyard1335/bashlib-style.git"
cd bashlib-style
chmod +x ./style
./style help
./test/example.sh
```

## Installation

This repo keeps install details in a separate file.

- See [INSTALL.md](INSTALL.md) for local, user, and system-wide install options.
- If you use `bashlib-installer`, follow the dedicated section in [INSTALL.md](INSTALL.md).

## Basic Usage

```bash
style <command> [args...]
```

Commands:
- `print`
- `menu`
- `list`
- `help`
- `version`

Examples:

```bash
style print --success "build complete"
style print --warn "disk usage is high"
style menu --title "My Tool"
style list colors --bright
```

## Use As A Library

```bash
#!/usr/bin/env bash
source "/path/to/bashlib-style/lib/bashlib_style.bash"

print_success "ready"
helpmenu_print_title "my-tool"
```

The `style` command is useful for testing and discovery, while sourcing the library is the best path for production scripts.

## API

For full API documentation see the [API.md](API.md) 

## Contributing

Guidelines for fixes, features, and pull requests are in `CONTRIBUTING.md`.

## License

This project is licensed under the terms in `LICENSE`.
