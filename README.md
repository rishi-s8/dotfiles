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

To setup everything, just run `./install`.

The repo currently only works on Mac Osx using `brew` and Linux using `apt` or `yum`.

For C++ development, we should install `clangd` after opening a C++ file using following
command: `:CocCommand clangd.install`. If this command fails, try deleting the clangd
extension directory i.e. `~/.config/coc/extensions/coc-cland-data`.

If there is a bug in ripgrep: Change the error line to:
command! -nargs=* -complete=file RgRoot :call s:RgShowRoot()