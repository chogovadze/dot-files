syntax enable

set cmdheight=2
set tabstop=4
set shiftwidth=4
set expandtab
set noswapfile
set incsearch
set wildmenu
set number relativenumber
set nu rnu
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
Plug 'preservim/nerdcommenter'
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

colorscheme gruvbox
set background=dark

let g:ycm_semantic_triggers = {
	\   'python': [ 're!\w{2}' ]
	\ }

let g:ycm_autoclose_preview_window_after_completion=1

" Airlines
let g:airline_theme='base16'
let g:airline#extensions#tabline#enabled=1
let g:airline_statusline_ontop=1
let g:airline#extensions#tabline#formatter='default'
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
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>

" Plugin specific remapping
nnoremap <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fe :Ag<CR>
nmap <silent> <leader>ew <Plug>(ale_previous_wrap)
nmap <silent> <leader>er <Plug>(ale_next_wrap)
"" syntastic commands
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"nnoremap <leader>ee :SyntasticToggleMode<CR>
"nnoremap <leader>er :SyntasticCheck<CR>
"nnoremap <leader>ew :lnext<CR>
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 0
"let g:syntastic_check_on_open = 1 
"let g:syntastic_check_on_wq = 0
"let g:syntastic_python_checkers = ['flake8']
