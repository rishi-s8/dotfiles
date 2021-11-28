" Personal configuration file of Ankur Sharma (inbox.ankur@outlook.com)

" ----------------
" General settings
" ----------------

set number
set ruler
set conceallevel=0
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set showmatch
set showtabline=1
set laststatus=1
set cursorline
set fo+=t
set laststatus=2
set t_Co=256
set foldmethod=indent
set undodir=~/.nvim/undo-dir
set undofile
set completeopt-=preview
set encoding=utf-8
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set number relativenumber
set nu rnu
set termguicolors
set background=dark
set signcolumn=number

" ------------
" Key mappings
" ------------

let mapleader = "\<Space>"

" <leader><leader> toggles between buffers
nnoremap <leader><leader> <c-^>

" Allow gf to open non-existent files
map gf :edit <cfile><cr>

" Map escape to jk
inoremap jk <ESC>

" No arrow keys --- force yourself to use the home row
nnoremap <up> <nop>
nnoremap <down> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Left and right can switch buffers
nnoremap <left> :bp<CR>
nnoremap <right> :bn<CR>

" Expand and shrink selected region in visual mode
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" Save file with <leader>w
nnoremap <Leader>w :w<CR>

" List all buffers
map <leader>b :Buffers<CR>

" Easy insertion of a trailing ; or , from insert mode
imap ;; <Esc>A;<Esc>
imap ,, <Esc>A,<Esc>

" -------
" Plugins
" -------

" Automatically install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(data_dir . '/plugins')

source ~/.config/nvim/plugin/tagbar.vim
source ~/.config/nvim/plugin/vim-buffergator.vim
source ~/.config/nvim/plugin/vim-better-whitespace.vim
source ~/.config/nvim/plugin/vim-indent-guides.vim
source ~/.config/nvim/plugin/vim-rainbow.vim
source ~/.config/nvim/plugin/vim-sneak.vim
source ~/.config/nvim/plugin/vim-highlightedyank.vim
source ~/.config/nvim/plugin/vim-matchup.vim
source ~/.config/nvim/plugin/nerdcommenter.vim
source ~/.config/nvim/plugin/nerdtree.vim
source ~/.config/nvim/plugin/coc.vim
source ~/.config/nvim/plugin/vim-tmux-navigator.vim
source ~/.config/nvim/plugin/vim-nerdtree-syntax-highlight.vim
source ~/.config/nvim/plugin/vim-devicons.vim
source ~/.config/nvim/plugin/supertab.vim
source ~/.config/nvim/plugin/vimrooter.vim
source ~/.config/nvim/plugin/fzf.vim
source ~/.config/nvim/plugin/vim-expand-region.vim
source ~/.config/nvim/plugin/vim-gitgutter.vim
source ~/.config/nvim/plugin/nerdtree-git-plugin.vim
source ~/.config/nvim/plugin/blamer.vim
source ~/.config/nvim/plugin/lightline.vim
source ~/.config/nvim/plugin/base16-vim.vim
source ~/.config/nvim/plugin/vim-base16-lightline.vim

call plug#end()
doautocmd User PlugLoaded

" -----------------
" Language settings
" -----------------

let g:perl_host_prog = '/usr/bin/perl'

if has("linux")
let g:python_host_prog =  '/usr/bin/python3'
let g:python3_host_prog =  '/usr/bin/python3'
elseif has("mac")
let g:python_host_prog =  '/usr/local/bin/python3'
let g:python3_host_prog =  '/usr/local/bin/python3'
endif

" Theme configuration
colorscheme base16-atelier-savanna
