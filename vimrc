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

" Leader
let mapleader=","

" Sudo
cmap w!! w !sudo tee > /dev/null %

" Vimrc
nnoremap <leader>ev :vsplit ~/projects/dotfiles/vimrc<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Enable syntax highlighting.
syntax on

" Pathogen
call pathogen#infect()
filetype on
filetype plugin indent on

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

" NERDTree
nnoremap <left> <Esc>:NERDTreeToggle<RETURN>

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

" Zen Coding
let g:user_zen_expandabbr_key='<c-k>'
let g:user_zen_complete_tag=1

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
let g:Powerline_theme="skwp"
let g:Powerline_colorstheme="skwp"
let g:Powerline_symbols="fancy"

" Pretty JSON
nnoremap <leader>j :%!python -m json.tool<cr>

" Formd
function! Formd(option)
  :let save_view = winsaveview()
  :let flag = a:option
  :if flag == "-r"
    :%! formd -r
  :elseif flag == "-i"
    :%! formd -i
  :else
    :%! formd -f
  :endif
  :call winrestview(save_view)
endfunction
nnoremap <leader>fr :call Formd("-r")<cr>
nnoremap <leader>fi :call Formd("-i")<cr>
nnoremap <leader>f :call Formd("-f")<cr>

" Abbreviations
iabbrev @@ lee0741@gmail.com
iabbrev ccopy © 2011-2013 Steven Lee.
iabbrev nname Steven Lee
iabbrev wweb http://lee0741.github.com/

" Move
let g:move_key_modifier='C'
