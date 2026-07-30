# Dotfiles

This repo contains all necessary dotfiles.
* zsh
* git
* nvim
* tmux

I use [dotbot](https://github.com/anishathalye/dotbot) to make it easier to install.

First install iTerm2.

Install ZSH and switch the default shell.

Next Install Nerd-Font Complete, and Switch the font in iTerm2.

Install unzip,  sudo apt install autoconf automake libtool pkg-config

To setup everything, just run `./install`.

## Zsh plugins

Plugins are managed with [antidote](https://github.com/mattmc3/antidote) and declared in
`zsh/zsh_plugins.txt` (linked to `~/.zsh_plugins.txt`).

They are **not** loaded dynamically. `./install` runs `zsh/compile-plugins`, which resolves
and clones every plugin once and writes a single static `~/.zsh_plugins.zsh` that the zshrc
sources directly. Calling `antidote bundle` on every startup instead costs several seconds
per shell.

After editing `zsh/zsh_plugins.txt`, the zshrc notices the file is newer than the compiled
output and rebuilds it on the next shell. You can also rebuild explicitly:

```sh
./zsh/compile-plugins
```

Note that `zshenv` is sourced by zsh automatically before `zshrc`, so anything set up there
(nvm, fzf, p10k) must not be sourced again from `zshrc`.

To check startup time and find slow spots:

```sh
time zsh -i -c exit
zsh -f -c 'zmodload zsh/zprof; source ~/.zshrc >/dev/null 2>&1; zprof' | head -20
```

The repo currently only works on Mac Osx using `brew` and Linux using `apt` or `yum`.

For C++ development, we should install `clangd` after opening a C++ file using following
command: `:CocCommand clangd.install`. If this command fails, try deleting the clangd
extension directory i.e. `~/.config/coc/extensions/coc-cland-data`.

If there is a bug in ripgrep: Change the error line to:
command! -nargs=* -complete=file RgRoot :call s:RgShowRoot()