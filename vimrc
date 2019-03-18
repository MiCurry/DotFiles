" indentation and wrapping
set autoindent		" Auto indentation stuff
set smartindent	    " Indent based on file type.
set tabstop=4
set shiftwidth=4
set expandtab
set linebreak		" Wraps lines instead of inserting an EOL
set textwidth=129	" How many char to allow before inserting a newline
set wrap		    " Allows wrapping on display.
syntax on

" Move around windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"Other
set number		" Show Line numbers
set ttyfast		" Speed option
set nospell		" Spell checking on.
set showmode		" Shows what mode your on at the bottom left
set backspace=eol,start,indent		" Allow backspace in insertmode

"Ruler Set"                                          " show the ruler
set ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)  " a ruler on steroids
set showcmd

"Undos and history to be persistant
set undolevels=1000
set history=1000

set mouse=a

set autochdir " Change vim's current working directory to the currently 
              " open file

" Syntax, textwidth, and tab stuff
set textwidth=79

autocmd BufRead,BufNewFile *.txt setlocal spell
autocmd BufRead,BufNewFile *.txt set textwidth=79

autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.md set textwidth=79

autocmd BufRead,BufNewFile Makefile set textwidth=300
autocmd BufRead,BufNewFile Makefile set noexpandtab

autocmd BufRead,BufNewFile *.py set textwidth=99
autocmd BufRead,BufNewFile *.py set expandtab

autocmd BufRead,BufNewFile *.F set textwidth=132
autocmd BufRead,BufNewFile *.F set tabstop=3
autocmd BufRead,BufNewFile *.F set shiftwidth=3

autocmd BufRead,BufNewFile *.f90 set textwidth=132
autocmd BufRead,BufNewFile *.f90 set tabstop=3
autocmd BufRead,BufNewFile *.f90 set shiftwidth=3

" Coloumn Highlighting
highlight ColorColumn ctermbg=lightgrey guibg=lightgrey
set cc=+1

