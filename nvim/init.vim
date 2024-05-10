set nocompatible
call plug#begin('~/.vim/plugged')
Plug 'fmoralesc/vim-pad'
    " NERDTree
    Plug 'scrooloose/nerdtree'
    " Fun status bar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " C Vim extension
    Plug 'vim-scripts/c.vim'
    " Git plugin
    Plug 'tpope/vim-fugitive'
    " Gruvbox colorscheme
    Plug 'morhetz/gruvbox'
    Plug 'dhananjaylatkar/cscope_maps.nvim'
    " Jellybean colorscheme
    Plug 'nanotech/jellybeans.vim'
    " Taglist
    Plug 'vim-scripts/taglist.vim'
    " Plug 'ludovicchabant/vim-gutentags'
    "
    " Buftabline
    Plug 'ap/vim-buftabline'
    " Tagbar
    Plug 'majutsushi/tagbar'
    " Vim solarized colors
    Plug 'altercation/vim-colors-solarized'
    " Auto comment/decomment
    Plug 'tpope/vim-commentary'
    " Tabular
    Plug 'godlygeek/tabular'
    " Sneak - Easy movement
    Plug 'justinmk/vim-sneak'
    " More themes
    Plug 'flazz/vim-colorschemes'
    " Vim Startify Menu
    Plug 'mhinz/vim-startify'
    " Arduino
    Plug 'stevearc/vim-arduino'
    " Surround
    Plug 'tpope/vim-surround'
    " Session plugin
    Plug 'xolox/vim-session'
    " Vim misc
    Plug 'xolox/vim-misc'
    " Everblush theme
    Plug 'mangeshrex/everblush.vim'
    " Awesome color theme
    Plug 'sainnhe/sonokai'
    " Tender colorscheme
    Plug 'jacoborus/tender.vim'
    " Convert number under cursor to hex or back.
    Plug 'rr-/vim-hexdec'
    " LSP
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " CtrlP
    " Plug 'ctrlpvim/ctrlp.vim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    " Themes
    Plug 'projekt0n/github-nvim-theme'
    " Golang support
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

" set completeopt+=noselect

" let g:go_bin_path = $HOME."/go/bin"
let g:go_bin_path = $HOME."/.local/bin"
let g:go_doc_popup_window = 1


let g:python3_host_prog = '/usr/bin/python3'

" Colors
set termguicolors
colorscheme github_dark_dimmed
let g:airline_theme='minimalist'


" Sneak config options
let g:sneak#label = 1
let g:ctrlp_show_hidden=1

" Switch buffer tabs
nnoremap <C-M> :bnext<CR>
nnoremap <C-N> :bprev<CR>

" Menus
set display+=lastline
set wildmenu
set wildmode=list:full
set wildignorecase
set nu
set nowrap
set expandtab
set tabstop=4
set shiftwidth=4
set smarttab
set autoindent
set smartindent
set nocursorline
set ignorecase
set smartcase
set incsearch

set shell=/bin/zsh

" Get rid of trailing white space when we save.
autocmd BufWritePre * %s/\s\+$//e
" Re-indent html when we write the file.
autocmd BufWritePre *.html :normal gg=G

set encoding=utf-8
set noerrorbells
set novisualbell
set nocursorcolumn
set autochdir
set noswapfile
set nocursorcolumn
set mouse=a
set fileformat=unix

filetype plugin indent on
filetype on

" leader key set to comma
let mapleader=","

" Toggle NERDTree
nnoremap <F2> :NERDTreeToggle<CR>
" Toggle TagBar
nnoremap <F3> :TagbarToggle<CR>

"" Bubble single lines
nmap <C-Up> ddkP
nmap <C-Down> ddp


" Bubble multiple lines
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=trail:·,tab:▸\ ,eol:¬
nnoremap <leader>l :set list!<CR> " Toggle tabs and EOL
nnoremap <leader>ec :e $MYVIMRC<CR>

set belloff=all


" An action can be a reference to a function that processes selected lines
function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

"
" Vimscripts file settings =========== {{{{
" augroup filetype_vim
"     autocmd!
"     autocmd FileType vim setlocal foldmethod=marker
" augroup END
" }}}}
"
let g:session_autoload = 'no'
let g:session_autosave = 'yes'

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
