syntax enable

set cmdheight=2
set tabstop=4
set shiftwidth=4
set expandtab
set number
set noswapfile
set incsearch
set wildmenu
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
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ycm-core/YouCompleteMe'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'mbbill/undotree'
Plug 'vim-syntastic/syntastic'
Plug 'preservim/nerdcommenter'
call plug#end()

colorscheme gruvbox
set background=dark

let g:ycm_semantic_triggers = {
	\   'python': [ 're!\w{2}' ]
	\ }

let g:ycm_autoclose_preview_window_after_completion=1

" General remapping
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>q :quit<CR>
nnoremap <leader>w :update <CR>
nnoremap <leader>d :lcd %:p:h<CR>
nnoremap <leader>+ :vertical resize =5<CR>
nnoremap <leader>- :vertical resize -5<CR>
nnoremap <leader>b <C-^>

" Plugin specific remapping
nnoremap <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fe :Ag<CR>

" syntastic commands
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
nnoremap <leader>ee  :SyntasticToggleMode<CR>
nnoremap <leader>er  :SyntasticCheck<CR>
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0 
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
