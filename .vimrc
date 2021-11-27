" General Settings
set number
set nocompatible
set cursorline
set showcmd
set ic
set smartcase
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set relativenumber
set incsearch
set nohls
set encoding=UTF-8

call plug#begin('~/.vim/plugged')

Plug 'kaicataldo/material.vim', {'branch': 'main'}
Plug 'pangloss/vim-javascript'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'christoomey/vim-tmux-navigator'
Plug 'psliwka/vim-smoothie'
Plug 'Yggdroot/indentLine'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

call plug#end()

"Save key binds
noremap <silent> <C-S> :update<CR>
vnoremap <silent> <C-S> <C-C>:update<CR>
inoremap <silent> <C-S> <C-O>:update<CR>

"Copy Paste
vnoremap <silent> <C-c> "+y

"Disable Caps Lock and use it as Escape
au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'


" Material Theme
if (has('termguicolors'))
    set termguicolors
endif
colorscheme material

let g:material_terminal_italics = 1
let g:material_theme_style = 'palenight'

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

