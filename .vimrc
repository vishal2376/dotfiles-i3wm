"Basic settings
set number
set ic
set cursorline
set smartcase
set tabstop=4
set incsearch
set nohls
syntax enable
set background=dark
set termguicolors
colorscheme one
set guifont=JetBrainsMono\ 12

"Plugins 
call plug#begin('~/.vim/plugged')

Plug 'rakr/vim-one'
Plug 'vim-airline/vim-airline'
Plug 'psliwka/vim-smoothie'
Plug 'Yggdroot/indentLine'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'pangloss/vim-javascript'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()


" JavaScript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1

"Key Mappings {{{

"Save file
noremap <silent> <C-S> :update<CR>
vnoremap <silent> <C-S> <C-C>:update<CR>
inoremap <silent> <C-S> <C-O>:update<CR>

"Copy Paste
vnoremap <silent> <C-c> "+y
inoremap <silent> <C-v> "+gP

"Disable Caps Lock and use it as Escape
au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

"}}}


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
