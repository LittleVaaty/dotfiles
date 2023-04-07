call plug#begin('~/.config/nvim/plugged')
    " Appearance
    Plug 'vim-airline/vim-airline'
    Plug 'ryanoasis/vim-devicons'
    Plug 'Mofiqul/dracula.nvim'

    " Utilities
    Plug 'sheerun/vim-polyglot'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ap/vim-css-color'
    Plug 'preservim/nerdtree'

    " Completion / linters / formatters
    Plug 'neoclide/coc.nvim',  {'branch': 'master', 'do': 'yarn install'}
    Plug 'plasticboy/vim-markdown'

    " Git
    Plug 'airblade/vim-gitgutter'
call plug#end()

" Set <leader>
let mapleader = " "

" Color scheme and themes
colorscheme dracula

" Airline
let g:airline_theme = 'sobrio'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Syntax
filetype plugin indent on
syntax on

" Options
set background=dark
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set cursorline
set hidden
set inccommand=split
set mouse=a
set number
set relativenumber
set title
set ttimeoutlen=0
set wildmenu

" Terminal 
" set splitbelow

" Normal mode remappings
nnoremap <C-q> :q!<CR>
nnoremap <F4> :bd<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>t :botright 20sp term://powershell<CR>i
nnoremap <F10> :CocCommand tsserver.organizeImports<CR>
nnoremap gb <C-o>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>- :vsplit<CR>
nnoremap <leader>= <C-w>q

let g:NERDTreeMapActivateNode='l'
let g:NERDTreeMapJumpParent='h'
