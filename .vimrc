set cmdheight=2
syntax enable
set tabstop=4
set shiftwidth=4
set expandtab
set number

let mapleader = " "

filetype indent on

set autoindent
set colorcolumn=79
set noswapfile
set cmdheight=2


highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'ycm-core/YouCompleteMe'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'

call plug#end()

colorscheme gruvbox
set background=dark

let g:ycm_semantic_triggers = {
	\   'python': [ 're!\w{2}' ]
	\ }

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
map <leader>n :NERDTreeToggle<CR>
