" YANCEN LI

" Init {
set nocompatible
filetype off
" }

" Vundle {
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'kien/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'rking/ag.vim'
call vundle#end()
filetype plugin indent on
" }

" Colors {
syntax enable " enable syntax processing
colorscheme solarized
set background=dark
" }

" Misc {
set encoding=utf-8
set ttyfast " faster redraw
set modelines=1
" }

" Spaces & Tabs {
set tabstop=4 " number of visual spcaes per TAB
set softtabstop=4 " number of spaces in tab when editing
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
set foldmethod=indent " fold based on indent level
set foldenable " enable folding
set foldlevelstart=10 " open most folds by default
set foldnestmax=10 " 10 nested fold max
nnoremap <space> za 
" }

" Movement {
nnoremap j gj
nnoremap k gk
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>
" }

" Leader Shortcuts {
let mapleader="," " leader is comma
nnoremap <leader>ev :vsplit ~/Code/dotfiles/vimrc<cr>
nnoremap <leader>ez :vsplit ~/Code/dotfiles/zshrc<cr>
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

" vim:foldmarker={,}:foldmethod=marker:foldlevel=0
