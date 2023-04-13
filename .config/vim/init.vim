" install vim-plug if it does not exist
let plug_install = 0
let autoload_plug_path = stdpath('config') . '/autoload/plug.vim'
if !filereadable(autoload_plug_path)
    silent exe '!curl -fL --create-dirs -o ' . autoload_plug_path . 
        \ ' https://raw.github.com/junegunn/vim-plug/master/plug.vim'
    execute 'source ' . fnameescape(autoload_plug_path)
    let plug_install = 1
endif
unlet autoload_plug_path

" vim plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-sensible'
Plug 'itchyny/lightline.vim'
Plug 'dense-analysis/ale'
Plug 'morhetz/gruvbox'
Plug 'aserebryakov/vim-todo-lists'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'preservim/nerdtree'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
call plug#end()

" auto-install plugins
if plug_install
    PlugInstall --sync
endif
unlet plug_install

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
set termguicolors " enable true colour support

" set cursor styling
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" enable fzf
set rtp+=/usr/local/opt/fzf

"" neovim specifics
" leave escape to normal in nvim terminal mode as <Esc>
" :tnoremap <Esc> <C-\><C-n>

" NERDTree
nnoremap <C-n> :NERDTree<CR>
autocmd VimEnter * if &filetype !=# 'gitcommit' | NERDTree | endif " open on start
autocmd VimEnter * wincmd p " focus on file
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree")  && b:NERDTree.isTabTree()) | q | endif " quit if last buffer is closed and NERDTree is the only thing open 

" fix copy bug in iTerm2
set mouse=

