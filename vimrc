syntax enable

set cmdheight=2
set tabstop=4
set shiftwidth=4
set backspace=2
set expandtab
set noswapfile
set incsearch
set wildmenu
set number relativenumber
set nu rnu
set cursorline
set signcolumn=yes
let mapleader = " "

set encoding=UTF-8
filetype indent on

set autoindent
set smartindent
set undodir=~/.vim/undodir
set undofile
set colorcolumn=79
set noswapfile
set cmdheight=2

highlight ColorColumn ctermbg=0 guibg=lightgrey

if has("persistent_undo")
   let target_path = expand('~/.undodir')

    " create the directory and any parent directories
    " if the location does not exist.
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif

    let &undodir=target_path
    set undofile
endif



call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'jlanzarotta/bufexplorer'
Plug 'junegunn/fzf.vim'
Plug 'matze/vim-move'
"Plug 'ycm-core/YouCompleteMe'
Plug 'morhetz/gruvbox'
Plug 'psliwka/vim-smoothie'
Plug 'preservim/nerdtree'
Plug 'mbbill/undotree'
Plug 'preservim/nerdcommenter'
Plug 'dense-analysis/ale'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'vim-airline/vim-airline'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-eunuch'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-startify'
Plug 'junegunn/goyo.vim'
Plug 'ervandew/supertab'
call plug#end()

colorscheme gruvbox
set background=dark



"YCM
"let g:ycm_semantic_triggers = {
    "\   'python': [ 're!\w{2}' ]
    "\ }

"let g:ycm_autoclose_preview_window_after_completion=1

" General remapping
"nnoremap <leader>h :wincmd h<CR>
"nnoremap <leader>j :wincmd j<CR>
"nnoremap <leader>k :wincmd k<CR>
"nnoremap <leader>l :wincmd l<CR>
nnoremap <leader><Left> :wincmd h<CR>
nnoremap <leader><Down> :wincmd j<CR>
nnoremap <leader><Up> :wincmd k<CR>
nnoremap <leader><Right> :wincmd l<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>s :update <CR>
nnoremap <leader>d :lcd %:p:h<CR>
nnoremap <leader>= :vertical resize +15<CR>
nnoremap <leader>- :vertical resize -15<CR>
nnoremap <leader>b <C-^>
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>


" Buffer mapping
" nnoremap <Leader>l :ls<CR>
nnoremap <leader>w :bw<CR>
nnoremap <Leader>g :e#<CR>
"nnoremap <Leader>[ :bp<CR>
"nnoremap <Leader>] :bn<CR>
"nnoremap <Leader>1 :1b<CR>
"nnoremap <Leader>2 :2b<CR>
"nnoremap <Leader>3 :3b<CR>
"nnoremap <Leader>4 :4b<CR>
"nnoremap <Leader>5 :5b<CR>
"nnoremap <Leader>6 :6b<CR>
"nnoremap <Leader>7 :7b<CR>
"nnoremap <Leader>8 :8b<CR>
"nnoremap <Leader>9 :9b<CR>
"nnoremap <Leader>0 :10b<CR>
"" Plugin specific remapping


" Airlines
let g:airline_theme='base16'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline_statusline_ontop = 0
let g:airline#extensions#tabline#formatter='default'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>0 <Plug>AirlineSelectTab0
nmap <leader>[ <Plug>AirlineSelectPrevTab
nmap <leader>] <Plug>AirlineSelectNextTab

"UltiSnips
let g:UltiSnipsExpandTrigger = "§"
"nnoremap <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>


" NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <C-n> :NERDTreeMirror<CR>:NERDTreeFocus<CR>
nnoremap <leader>u :UndotreeToggle<CR>


" Fuzzy
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fe :Ag<CR>

" ALE
nmap <silent>[g <Plug>(ale_previous_wrap)
nmap <silent>]g <Plug>(ale_next_wrap)
let g:ale_linters={'python': ['flake8']}
let g:ale_sign_column_always = 1
let g:ale_floating_preview = 1
let g:ale_hover_to_floating_preview = 1
let g:ale_completion_enabled = 1

" Goyo
nnoremap <leader>m :Goyo<CR> 
let g:goyo_width = 120
