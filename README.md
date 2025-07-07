# dotfiles

> Stores .dotfiles and configs in a bare git repository

## Setup

Quick install with:
```bash
curl -Lks https://gist.githubusercontent.com/justinnais/11e49896a4632d294a30283de5465e19/raw | /bin/bash
```

## Usage

```bash
dotfiles status # aliased as dfg
dfg add .zshrc
dfg commit -m "Add zshrc"
lazydfg # view dotfiles in lazygit
dfg push
```

### Notes
- Common configs on `main`
- Operating system specific configs on `mac` and `wsl`
- Other branches should be used for local only configs
