" turn on hybrid line numbers
:set number relativenumber
:set nu rnu

let g:is_posix=1 " fix to posix for better syntax highlighting

" tabs vs spaces
set tabstop=4
set softtabstop=4
set expandtab " tabs are spaces
autocmd Filetype yaml setlocal ts=2 sw=2 sts=2 " 2 spaces for yml

set backspace=indent,eol,start " make backspace work as expected

" theming
colorscheme gruvbox
let g:lightline = {'colorscheme': 'jellybeans',}
set noshowmode " lightline shows the mode in the status bar

" set cursor styling
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" generate help files for plugins
packloadall
silent! helptags ALL
