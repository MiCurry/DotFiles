" indentation and wrapping
set autoindent		" Auto indentation stuff
set smartindent	    " Indent based on file type.
set tabstop=4
set shiftwidth=4
set expandtab
set linebreak		" Wraps lines instead of inserting an EOL
set textwidth=79	" How many char to allow before inserting a newline
set wrap		    " Allows wrapping on display.

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
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)  " a ruler on steroids
set showcmd

"Undos and history to be persistant
set undolevels=1000
set history=1000

set mouse=a

autocmd BufRead,BufNewFile *.txt setlocal spell

