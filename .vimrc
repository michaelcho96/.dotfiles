" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'nvie/vim-flake8'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdcommenter'
Plug 'davidhalter/jedi-vim'
Plug 'ervandew/supertab'


call plug#end()



set relativenumber
set number

filetype plugin indent on " Filetype auto-detection
syntax on " Syntax highlighting

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab " use spaces instead of tabs.
set smarttab " let's tab key insert 'tab stops', and bksp deletes tabs.
set shiftround " tab / shifting moves to closest tabstop.
set autoindent " Match indents on new lines.
set smartindent " Intellegently dedent / indent new lines based on rules.

set incsearch
set hlsearch

let mapleader=","

inoremap kj <esc>

set hidden " allow me to have buffers with unsaved changes.

" So we don't have to press shift when we want to get into command mode.
nnoremap ; :
vnoremap ; :


nnoremap <leader><leader> <c-^>

" create new vsplit, and switch to it.
noremap <leader>v <C-w>v

" Tagbar!
nmap <F8> :TagbarToggle<CR> <C-w>l

" Look for tags in any dir going up to home. Stop on first hit.
set tags=./tags,tags;$HOME

" closes buffer without losing pane
nnoremap <leader>q :bp <BAR> bd #<CR>

 " bindings for easy split nav
 nnoremap <C-h> <C-w>h
 nnoremap <C-j> <C-w>j
 nnoremap <C-k> <C-w>k
 nnoremap <C-l> <C-w>l

 set clipboard^=unnamed
