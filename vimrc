syntax enable

set cmdheight=2
set tabstop=4
set shiftwidth=4
set expandtab
set number
set noswapfile
set incsearch

let mapleader = " "

filetype indent on

set autoindent
set smartindent
set undodir=~/.vim/undodir
set undofile
set colorcolumn=79
set noswapfile
set cmdheight=2


highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'ycm-core/YouCompleteMe'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'mbbill/undotree'

call plug#end()

colorscheme gruvbox
set background=dark

let g:ycm_semantic_triggers = {
	\   'python': [ 're!\w{2}' ]
	\ }

let g:ycm_autoclose_preview_window_after_completion=1


nnoremap  <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>q :quit<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <silent> <Leader>+ :vertical resize =5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
nnoremap <Leader>s :update <CR>
