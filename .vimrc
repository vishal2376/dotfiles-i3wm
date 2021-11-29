"Basic settings
set number
set nocompatible
set cursorline
set ic
set showcmd
set nohls
set incsearch
set smartcase

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set relativenumber

filetype on
filetype plugin on
filetype indent on
set encoding=UTF-8

set history=1000

syntax enable
set background=dark
set termguicolors
colorscheme one
set guifont=JetBrainsMono\ 13

"Plugins 
call plug#begin('~/.vim/plugged')

Plug 'rakr/vim-one'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'psliwka/vim-smoothie'
Plug 'Yggdroot/indentLine'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'pangloss/vim-javascript'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

call plug#end()

"Custom Key Mappings {{{

"Save file
noremap <silent> <C-S> :update<CR>
vnoremap <silent> <C-S> <C-C>:update<CR>
inoremap <silent> <C-S> <C-O>:update<CR>

"Copy Paste
noremap <silent> <C-c> "+y
inoremap <silent> <C-p> "+gP

noremap <TAB> %

"File compile
autocmd filetype cpp noremap <F9> <ESC> :w <CR> :!g++ -o %< % && ./%< <CR>
autocmd filetype cpp inoremap <F9> <ESC> :w <CR> :!g++ -o %< % && ./%< <CR>
autocmd filetype python noremap <F9> <ESC> :w <CR> :!python3 % <CR>
autocmd filetype python inoremap <F9> <ESC> :w <CR> :!python3 % <CR>

nnoremap <C-TAB> :b# <CR>

"Disable Caps Lock and use it as Escape
au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

"}}}


" JavaScript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1

" NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Tagbar
nmap <F8> :TagbarToggle<CR>

" Coc.nvim
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
