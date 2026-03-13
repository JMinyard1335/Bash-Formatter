# Bash Formatter

A tool script for formatting different outputs in bash scripts. It also has commands to help write
clean help menus for your scripts.


## Example output

Below is a screenshot of running the `example.sh` script

<img width="611" height="321" alt="image" src="https://github.com/user-attachments/assets/9c3676be-866d-46d6-8f84-c574d11d8043" />

## API

These are the different format commands feel free to give them a try
```bash
format install
format update
format remove

format log		<tag>	<message>
format logln	<tag>	<message>
format ok		<message>
format error	<message>
format warn		<message>

format title	<title>
format header	<header>
format option	<flag str>	<description>
format example	<>	<>

```
