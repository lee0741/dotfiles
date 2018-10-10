" YANCEN LI

" Init {
set nocompatible
filetype off
" }

" Plugins {
call plug#begin('~/.vim/plugged')
Plug 'dracula/vim',{'as':'dracula'}
Plug 'kien/ctrlp.vim'
Plug 'itchyny/lightline.vim'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'mattn/emmet-vim'
call plug#end()
" }

" Colors {
syntax enable " enable syntax processing
set background=dark
" }

" Misc {
set backspace=2
set encoding=utf-8
set ttyfast " faster redraw
set modelines=1
" }

" Spaces & Tabs {
set tabstop=2 " number of visual spcaes per TAB
set softtabstop=2 " number of spaces in tab when editing
set sw=2 " shift width
set expandtab " tabs are spaces
set autoindent
" }

" UI Config {
set number " show line numbers
set showcmd " show command in bottom bar
set noshowmode
set cursorline " highlight current line
set wildmenu " visual autocomplete for command menu
set showmatch " highlight matching [{()}]
set guifont=Monaco:h14
" }

" Searching {
set ignorecase " ignore case when searching
set incsearch " search as characters are entered
set hlsearch " highlight matches
" }

" Folding {
set foldmethod=syntax " fold based on indent level
set foldcolumn=1 " define 1 col at window left
set foldenable " enable folding
" set foldlevelstart=10 " open most folds by default
let javaScript_fold=1 " active folding by javascript syntax
nnoremap <space> za
hi Folded ctermbg=237 " folding highlight background color

function! CustomFoldText()
  let foldsize = (v:foldend-v:foldstart)
  return getline(v:foldstart).' ('.foldsize.' lines)'
endfunction
set foldtext=CustomFoldText()
" }

" Movement {
nnoremap j <c-d>
nnoremap k <c-u>
" }

" Leader Shortcuts {
let mapleader="," " leader is comma
nnoremap <leader>ev :vsplit ~/.dotfiles/vimrc<cr>
nnoremap <leader>ez :vsplit ~/.dotfiles/zshrc<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader><space> :noh<cr>
nnoremap <leader>a :Ag
" }

" CtrlP {
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrl_switch_butter = 0
let g:ctrl_working_path_mode = 0
let g:ctrl_user_command = 'ag %s -l --nocolor --hideen -g ""'
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }
" }

" Emmet {
let g:user_emmet_expandabbr_key='<c-e>'
let g:user_emmet_complete_tag=1
" }

" Lightline {
set laststatus=2
let g:lightline = {
    \ 'colorscheme': "solarized",
    \ }
" }

" Nerdtree {
map <c-n> :NERDTreeToggle<cr>
" }

" vim:foldmarker={,}:foldmethod=marker:foldlevel=0
