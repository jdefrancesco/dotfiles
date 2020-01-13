let g:dotvim_settings = {}
let g:dotvim_settings.version = 2

" by default, language specific plugins are not loaded.  this can be changed with the following:
"let g:dotvim_settings.plugin_groups_exclude = ['ruby','scala', ]

" if there are groups you want always loaded, you can use this:
let g:dotvim_settings.plugin_groups_include = ['python',  'c', 'go', 'scm']

" alternatively, you can set this variable to load exactly what you want
"let g:dotvim_settings.plugin_groups = ['core','web']

" if there is a particular plugin you don't like, you can define this variable to disable them entirely
"let g:dotvim_settings.disabled_plugins=['vim-foo','vim-bar']
source ~/.vim/vimrc

set t_Co=256

set nowrap
set guifont=Envy\ Code\ R:h13

set transparency=0

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" if has("gui_running")
"   colorscheme base16-gruvbox-dark-medium
"   autocmd GUIEnter * set vb t_vb=
" else
"   colorscheme molokai
" endif
"
set tabstop=8
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab

autocmd BufWritePre *.c,*.py %s/\s\+$//e

set noerrorbells 
set novisualbell
set nocursorcolumn
set autochdir

set colorcolumn=0
set nolist
set nocursorcolumn
set nocursorline

