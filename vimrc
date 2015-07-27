" mkdir -p ~/.vim/swaps
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" vim +PluginInstall +qall nocompatible

" Make Vim more useful
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'fatih/vim-go'

" Plugin 'honza/dockerfile.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set t_Co=256
" set background=dark
" colorscheme solarized
syntax on

" Tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
" set expandtab

autocmd FileType go setlocal nolist textwidth=0 noexpandtab ts=4 sw=4
let g:go_fmt_autosave = 1
let g:go_fmt_fail_silently = 0
let g:go_fmt_command = "goimports"


" Moving between windows
"map <C-J> <C-W>j
"map <C-K> <C-W>k
"map <C-H> <C-W>h
"map <C-L> <C-W>l

set wildignore+=.hg,.git,.svn " Version Controls"
set wildignore+=*.aux,*.out,*.toc "Latex Indermediate files"
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg "Binary Imgs"
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest "Compiled Object files"
set wildignore+=*.spl "Compiled speolling world list"
set wildignore+=*.sw? "Vim swap files"
set wildignore+=*.DS_Store "OSX SHIT"
set wildignore+=*.luac "Lua byte code"
set wildignore+=migrations "Django migrations"
set wildignore+=*.pyc "Python Object codes"
set wildignore+=*.orig "Merge resolution files"

