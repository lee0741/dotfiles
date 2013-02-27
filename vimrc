" My vimrc file

" Init
set nocompatible
set showmode
set showcmd
set ttyfast
set ruler
set undofile
set cursorline
set autochdir
set hidden
set laststatus=2

" Leader
let mapleader=","

" Enable syntax highlighting.
syntax on

" Pathogen
call pathogen#infect()
filetype on
filetype plugin indent on

" Supertab
imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

" Strip all trailing whitespace in the current file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Fold tag
nnoremap <leader>ft Vatzf

" Reselect the text that was just pasted
nnoremap <leader>v V`]

" Automatically indent when adding a curly bracket, etc.
set smartindent

" Tabs should be converted to a group of 2 spaces.
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab

" Minimal number of screen lines to keep above and below the cursor.
set scrolloff=3

" Use UTF-8
set encoding=utf-8

" To save, press ctrl-s.
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a

" Search as you type.
set incsearch
set showmatch
set hlsearch

" Ignore case when searching.
set ignorecase

" Remove highlightning after search
nnoremap <leader><space> :noh<cr>

" Show autocomplete menus.
set wildmenu

" Don't display the toolbar.
set guioptions-=T

" Fonts.
set guifont=Monaco:h16

" NERDTree
map <left> <Esc>:NERDTreeToggle<RETURN>

" Tagbar
nmap <right> <Esc>:TagbarToggle<RETURN>

" Solarized
syntax enable
"if has('gui_running')
set background=dark
colorscheme solarized
"else
    "set background=dark
    "colorscheme default
"endif    

" Turn line numbers.
set number

" Zen Coding
let g:user_zen_expandabbr_key='<D-e>'
let g:user_zen_complete_tag=1

set linebreak

" Show Invisibles
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" Ack
nnoremap <leader>a :Ack

" Fold
set fdm=indent
set fdc=4
set fdl=1
set nofoldenable "dont fold by default

" Powerline
let g:Powerline_theme="skwp"
let g:Powerline_colorstheme="skwp"
let g:Powerline_symbols="fancy"
