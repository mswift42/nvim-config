set termguicolors
syntax on
filetype off " required!
:let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 
set hidden
set autoread
set showmode 
set showcmd 
set ruler
set ignorecase
set smartcase
nnoremap ; :    
nnoremap Q @q   

set clipboard=unnamed

call plug#begin('~/.config/nvim/plugged')
Plug 'mswift42/vim-themes'
Plug 'fatih/vim-go'
Plug 'fmoralesc/vim-tutor-mode'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'vim-syntastic/syntastic'
Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdcommenter'
call plug#end()

colorscheme white-sand

set autowrite

filetype plugin indent on


let g:deoplete#enable_at_startup = 1
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_extra_types = 1

let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_metalinter_autosave = 1
let g:go_metalinter_deadline = "2s"

let g:NERDSpaceDelims = 1

let mapleader=","
nnoremap <Leader>q :q
nnoremap <Leader>fw :Gwrite
nnoremap <Leader>fc :Gcommit
nnoremap <Leader>fpp :Gpush

