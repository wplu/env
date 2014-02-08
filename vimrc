
set ic
set ts=4
set sw=4
set et
set ai

" Some Linux distributions set filetype in /etc/vimrc.
" Clear filetype flags before changing runtimepath to force Vim to reload them.
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on
filetype indent on
filetype plugin on
autocmd FileType go autocmd BufWritePre <buffer> Fmt
autocmd FileType go compiler go

