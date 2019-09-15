set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"Plugin 'cjrh/vim-conda' 
Plugin 'ycm-core/YouCompleteMe'
"Plugin 'davidhalter/jedi-vim'
Plugin 'nvie/vim-flake8'
Plugin 'jpalardy/vim-slime'
Plugin 'jalvesaq/Nvim-R'
Plugin 'altercation/vim-colors-solarized'
" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"solarized dark colorscheme options
syntax enable
set background=dark
colorscheme solarized
set t_Co=16
" show line numbers
set nu
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
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
"better menu in command mode
set wildmenu
set wildmode=longest:full,full
let python_highlight_all=1
" had to add this otherwise it didnt work properly
let g:jedi#force_py_version = 3
let g:UltisnipsUsePythonVersion = 3
set encoding=utf-8
" F7 for flake8 syntax check
" \ and d to open documentation for python modules with jedi
"  <C + Space> for autocompletion options
" FILE BROWSING:
" Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

"set R path for Nvim-R
"system R path
let R_path = '/usr/bin/'
"let R_path = '~/miniconda3/envs/monocle3/bin/'
let R_assign_map = '<C-->'
" <C-\><C-n> to enter insert mode in R terminal
" <C-x><C-o> autocompletion in R
"make backspace behave properly in insert mode
set backspace=indent,eol,start

" enable historical undo
set undofile 

" help see cursor easier
set cursorline

" <C-c><C-c> to paste current paragraph into vimterminal pane
" change vim-slime target to vimterminal
let g:slime_target = "vimterminal"
let g:slime_python_ipython = 1
" save folds on exit
augroup AutoSaveFolds
	autocmd!
	autocmd BufWinLeave * mkview
	autocmd BufWinEnter * silent loadview
augroup END
" youcompleteme options
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
" relative line numbers
set relativenumber
