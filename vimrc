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
set nrformats=
set linebreak
filetype off
filetype plugin indent on

" Leader
let mapleader=","

" Sudo
cmap w!! w !sudo tee > /dev/null %

" Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'wincent/Command-T'
Bundle 'altercation/vim-colors-solarized'
Bundle 'ervandew/supertab'
Bundle 'majutsushi/tagbar'
Bundle 'mattn/emmet-vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'othree/eregex.vim'
Bundle 'Lokaltog/vim-powerline'

" Vimrc
nnoremap <leader>ev :vsplit ~/projects/dotfiles/vimrc<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Enable syntax highlighting.
syntax on

" Supertab
inoremap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

" Strip all trailing whitespace in the current file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<cr>

" Fold tag
nnoremap <leader>ft Vatzf

" Reselect the text that was just pasted
nnoremap <leader>v V`]

" Automatically indent when adding a curly bracket, etc.
set smartindent

" Tabs should be converted to a group of 2 spaces.
set shiftwidth=2
set tabstop=2
set expandtab
set smarttab

" Minimal number of screen lines to keep above and below the cursor.
set scrolloff=3

" Use UTF-8
set encoding=utf-8

" Perl style regrex
let g:eregex_default_enable = 0
let g:eregex_forward_delim = '/'
let g:eregex_backward_delim = '?'
nnoremap <leader>/ :call eregex#toggle()<CR>

" Search as you type.
set incsearch
set showmatch
set hlsearch

" Ignore case when searching.
set ignorecase

" Wrap a word in double quotes.
nnoremap <leader>' viw<esc>a"<esc>hbi"<esc>lel

" Remove highlightning after search
nnoremap <leader><space> :noh<cr>

" Show autocomplete menus.
set wildmenu

" Don't display the toolbar.
set guioptions-=T

" Fonts.
set guifont=Monaco:h16

" Tagbar
nnoremap <right> <Esc>:TagbarToggle<RETURN>

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
set number numberwidth=1

" Emmet
let g:user_emmet_expandabbr_key='<c-k>'
let g:user_emmet_complete_tag=1

" Show Invisibles
nnoremap <leader>l :set list!<cr>
set listchars=tab:▸\ ,eol:¬
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" Fold
set fdm=indent
set fdc=4
set fdl=1
set nofoldenable "dont fold by default

" Powerline
let g:Powerline_symbols="fancy"

" Pretty JSON
nnoremap <leader>j :%!python -m json.tool<cr>

" Abbreviations
iabbrev @@ lee0741@gmail.com
iabbrev ccopy © 2011-2013 Steven Lee.
iabbrev nname Steven Lee
iabbrev wweb http://lee0741.github.com/
