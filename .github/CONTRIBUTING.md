# Contributing

## Formatting

### General

Contributors should configure their editor to use Unix line endings (`LF`).

If you’re on a Windows machine and your editor is not correctly using Unix line endings,
consider using [Git's `core.autocrlf`](https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration#_core_autocrlf) setting.
On a Windows machine, set it to true — this converts LF endings into CRLF when you check out code:

    git config core.autocrlf true

### Markdown

Image paths should be relative so they display correctly in a local preview.
