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


## Building the site

The site is build with [MkDocs](https://www.mkdocs.org/) and the
[readthedocs](https://www.mkdocs.org/user-guide/choosing-your-theme/#readthedocs) theme.

Clone the git repo. The `--depth 1` flag will clone just the most recent revision.

    git clone --depth 1 https://github.com/nasa-jpl/open-source-rover.git

You may build the site locally to preview your changes.

    python -m venv .venv
    source ./.venv/bin/activate
    pip install -U pip
    pip install -r requirements.txt
    mkdocs serve

And point your browser to http://127.0.0.1:8000/.
