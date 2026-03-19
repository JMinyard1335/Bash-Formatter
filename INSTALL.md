# Installation Guide

This project supports local usage, user-level installs, and system-wide installs.

## Prerequisites

- Bash 4+
- A POSIX-like environment (Linux/macOS)
- `chmod`, `cp`, and standard coreutils

## Option 1: Use Locally (No Install)

Best for development and testing.

```bash
git clone "https://github.com/JMinyard1335/bashlib-style.git"
cd bashlib-style
chmod +x ./style
./style help
./test/example.sh
```

## Option 2: User Install (`~/.local`)

This makes `style` available for your user account only.

```bash
mkdir -p "$HOME/.local/bin"
mkdir -p "$HOME/.local/lib/style"
mkdir -p "$HOME/.local/libexec/style"

cp ./style "$HOME/.local/bin/style"
cp -r ./lib/. "$HOME/.local/lib/style/"
cp -r ./libexec/. "$HOME/.local/libexec/style/"

chmod +x "$HOME/.local/bin/style"
chmod +x "$HOME/.local/libexec/style/"*
```

Make sure `~/.local/bin` is on your `PATH`:

```bash
export PATH="$HOME/.local/bin:$PATH"
```

Persist it by adding that line to your shell profile (`~/.bashrc`, `~/.profile`, etc.).

## Option 3: System Install (`/usr/local`)

This installs for all users.

```bash
sudo mkdir -p /usr/local/bin
sudo mkdir -p /usr/local/lib/style
sudo mkdir -p /usr/local/libexec/style

sudo cp ./style /usr/local/bin/style
sudo cp -r ./lib/. /usr/local/lib/style/
sudo cp -r ./libexec/. /usr/local/libexec/style/

sudo chmod +x /usr/local/bin/style
sudo chmod +x /usr/local/libexec/style/*
```

## Option 4: Install With `bashlib-installer`

If you use the external installer, run:

```bash
installer install <path-to-bashlib-style-project>
```

For installer options and global install support:

```bash
installer help
```

## Verify Installation

```bash
style version
style help
style list colors
```

## Uninstall

User install:

```bash
rm -f "$HOME/.local/bin/style"
rm -rf "$HOME/.local/lib/style"
rm -rf "$HOME/.local/libexec/style"
```

System install:

```bash
sudo rm -f /usr/local/bin/style
sudo rm -rf /usr/local/lib/style
sudo rm -rf /usr/local/libexec/style
```

With Installer
```bash
installer remove style
```