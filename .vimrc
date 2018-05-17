" takes advantage of vim improvements on vi
set nocompatible

" make backspace work as expected
set backspace=eol,start,indent

syntax on
colorscheme onedark

" search as you type
set incsearch

" disable search result highlighting
"set nohls

" enable search result highlighting
set hlsearch

" Set line numbers on
set nu

" Fixes common typos
"  correct :W to :w #typo
cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))
"  correct :Q to :q #typo
cnoreabbrev <expr> Q ((getcmdtype() is# ':' && getcmdline() is# 'Q')?('q'):('Q'))

set pastetoggle=<F11>
" Always display the current cursor position in the lower right corner of the Vim window.
set ruler
" Press space to clear search highlighting and any message already displayed.
nnoremap <silent> <Space> :silent noh<Bar>echo<CR>

colors koehler

" make colors appear in PuTTY
if has("terminfo")
	let &t_Co=16
	let &t_AB="\<Esc>[%?%p1%{8}%<%t%p1%{40}%+%e%p1%{92}%+%;%dm"
	let &t_AF="\<Esc>[%?%p1%{8}%<%t%p1%{30}%+%e%p1%{82}%+%;%dm"
else
	let &t_Co=16
	let &t_Sf="\<Esc>[3%dm"
	let &t_Sb="\<Esc>[4%dm"
endif


" Plug stuff
call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
call plug#end()

" My settings
set showcmd
" set showmatch
set ignorecase
set smartcase
set incsearch
set autowrite
set hidden
set mouse=a

" tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
"set expandtab

" tab issues
set autoindent
"set cindent
inoremap { {<CR>}<up><end><CR><tab>
inoremap <leader>{ {<cr><end><cr>}<up><home><tab><right><right>

" trial stuff    
let mapleader = "."
let maplocalleader = "?" 

inoremap <c-d> <esc>ddi
inoremap <c-u> <esc>viwU<esc>i
nnoremap <c-u> viwU<esc>
nnoremap -d dd
nnoremap -o ddO
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Usefull things
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>
inoremap jk <esc>:w<cr>
"inoremap <esc> <nop>
nnoremap . <nop>
inoremap OA <esc>ki
inoremap OB <esc>ji
inoremap OC <esc>li
inoremap OD <esc>hi

autocmd FileType c nnoremap <buffer> <leader>c I//<esc>
autocmd FileType cpp nnoremap <buffer> <leader>c I//<esc>

inoremap jjk <esc>:wq<cr>
nnoremap <tab> :w<cr><c-z>
nnoremap q :wq<cr>

" INSERT abbreviations
iabbrev adn and
iabbrev teh the
iabbrev waht what
iabbrev tehn then
