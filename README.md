# homebrew-hgprompt

A tap for the Mercurial bash prompt

## Install

```bash
brew tap tomgross/homebrew-hgprompt
brew install hgprompt
```

## Usage

Configure your `~/.hgrc` to enable the extension by adding following lines:

```ini
[extensions]
prompt = (path to)/hg-prompt/prompt.py
```

To put it in your bash prompt, edit your `~/.bashrc` file to include something like this:

```bash
hg_ps1() {
    hg prompt "{ on {branch}}{ at {bookmark}}{status}" 2> /dev/null
}

export PS1='\u at \h in \w$(hg_ps1)\n$ '
```

## Documentation

Further information on usage of the extension and more examples:
https://www.mercurial-scm.org/wiki/PromptExtension

