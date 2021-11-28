# Dotfiles

This repo contains all necessary dotfiles.
* zsh
* git
* nvim
* tmux

I use [dotbot](https://github.com/anishathalye/dotbot) to make it easier to install.

To setup everything, just run `./install`.

The repo currently only works on Mac Osx using `brew` and Linux using `apt` or `yum`.

For C++ development, we should install `clangd` after opening a C++ file using following
command: `:CocCommand clangd.install`. If this command fails, try deleting the clangd
extension directory i.e. `~/.config/coc/extensions/coc-cland-data`.
