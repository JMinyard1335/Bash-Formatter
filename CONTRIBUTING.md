# Contributing to bashlib-style

Thanks for your interest in improving `bashlib-style`.

## Ways To Contribute

- Report bugs and unexpected behavior.
- Suggest or implement new formatting/style features.
- Improve docs and examples.
- Add tests and edge-case coverage.

## Development Setup

```bash
git clone "https://github.com/JMinyard1335/bashlib-style.git"
cd bashlib-style
chmod +x ./style
./style help
./test/example.sh
```

## Project Layout

- `style`: top-level command dispatcher.
- `lib/`: sourceable library files.
- `lib/internal/`: print, menu, and color internals.
- `libexec/`: subcommand executables (`bashlib_print`, `bashlib_menu`, `bashlib_list`).
- `test/example.sh`: demo script for quick manual verification.

## Coding Guidelines

- Keep scripts Bash-focused and portable.
- Preserve existing naming patterns (`style_*`, `print_*`, `helpmenu_*`).
- Prefer clear, small functions.
- Quote variables unless word splitting is explicitly needed.
- Keep user-facing help text and docs in sync with behavior.

## Testing Checklist

Before opening a pull request, run:

```bash
./style help
./style version
./style print --success "ok"
./style menu --title "test"
./style list colors
./test/example.sh
```

If your change affects parsing or error handling, test at least one invalid input path.

## Pull Request Notes

- Keep PRs focused (one feature/fix per PR when possible).
- Explain why the change is needed.
- List behavior changes and any CLI output changes.
- Update `README.md` and `INSTALL.md` when behavior or setup changes.

## Commit Message Suggestions

Use short, imperative commit messages, for example:

- `fix print option parsing`
- `add install guide`
- `improve menu help output`

## AI-Assisted Contributions

AI tools are welcome for drafting code, docs, tests, and refactors.  
Contributors remain fully responsible for all submitted changes.

### Requirements

- Verify behavior manually before opening a PR.
- Run the project checklist:
  - `./style help`
  - `./style version`
  - `./style print --success "ok"`
  - `./style menu --title "test"`
  - `./style list colors`
  - `./test/example.sh`
- Ensure generated code matches project conventions (`style_*`, `print_*`, `helpmenu_*`).
- Do not include secrets, tokens, private keys, or private/internal code in prompts.
- Do not copy copyrighted or proprietary code verbatim from external sources.
- Keep PRs understandable: explain what changed and why, not just “AI generated this.”
- Update `README.md` and `INSTALL.md` when behavior or setup changes.
- If AI was used significantly, briefly disclose it in the PR description (for example: “AI-assisted drafting, manually reviewed and tested”).

### Not Acceptable

- Submitting unreviewed AI output.
- Large AI-generated changes without tests or explanation.
- Output that adds unnecessary complexity or breaks existing UX/help text.
