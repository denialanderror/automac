" turn on hybrid line numbers
:set number relativenumber
:set nu rnu

let g:is_posix=1 " fix to posix for better syntax highlighting

" tabs vs spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab " tabs are spaces

set backspace=indent,eol,start " make backspace work as expected

set autochdir " open new files in same directory as current buffer

" theming
colorscheme gruvbox
set background=dark
let g:lightline = {'colorscheme': 'jellybeans',}
set noshowmode " lightline shows the mode in the status bar

" set cursor styling
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" enable fzf
set rtp+=/usr/local/opt/fzf

" generate help files for plugins
packloadall
silent! helptags ALL
