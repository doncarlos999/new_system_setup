if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'vim-scripts/taglist.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'jpalardy/vim-slime'
call plug#end()
set nocompatible
filetype indent plugin on
set omnifunc=syntaxcomplete#Complete
syntax on
set nu relativenumber
set background=dark
colorscheme solarized
set t_Co=16
set autoindent
set smartindent
" highlight search
set hlsearch
" incremental search
set incsearch
" make search insensitive unlkess it contains at least one capital letter
set ignorecase
set smartcase
" this makes :find and tab completion look in all sub directories
set path+=**
" tab settings 
set tabstop=8
set softtabstop=4 
set expandtab
set shiftwidth=4
"better menu in command mode
set wildmenu
set wildmode=longest:full,full
set encoding=utf-8
" FILE BROWSING:
" Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
"make backspace behave properly in insert mode
set backspace=indent,eol,start

" enable historical undo
set undofile

" help see cursor easier
set cursorline
" save folds on exit
augroup AutoSaveFolds
    autocmd!
    autocmd BufWinLeave * mkview
    autocmd BufWinEnter * silent loadview
augroup END
" <C-c><C-c> also works in R mode
" <C-c><C-c> to paste current paragraph into tmux pane
let g:slime_target = "vimterminal"
let g:slime_python_ipython = 1

