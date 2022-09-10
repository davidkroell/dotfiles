set nocompatible

filetype on
filetype plugin on
filetype indent on

syntax on

set number
set cursorline
set shiftwidth=4
set expandtab
set showmatch
set ignorecase
set encoding=utf-8
set scrolloff=3
set history=100

" STATUS LINE ------------------------------------------------------------ {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2

" }}}
