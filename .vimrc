" This is so undo works fine (run in non-compatability mode)
execute pathogen#infect()
syntax on
filetype plugin indent on
set nocompatible
" Required stuff for Vundle
filetype off
filetype plugin indent on

call vundle#rc()
behave mswin
syntax on
set expandtab
set tabstop=4
set shiftwidth=4
set nowrap
set nolinebreak
set number
set smarttab
" This is when the backspace key does not work in insert mode
set backspace=indent,eol,start

" Automatically remove whitespace when saving
" autocmd BufWritePre * :%s/\s\+$//e

" This is to jump around in python (alt + "."/ ",") between indentations
nnoremap <M-,> :call search('^'. matchstr(getline('.'), '\(^\s*\)') .'\%<' . line('.') . 'l\S', 'be')<CR>
nnoremap <M-.> :call search('^'. matchstr(getline('.'), '\(^\s*\)') .'\%>' . line('.') . 'l\S', 'e')<CR>

" This is to switch tabs easily (just like a normal browser XD )
nmap <tab> <Esc>:bnext!<CR>
nmap <S-tab> <Esc>:bprev!<CR>
nmap <F4> <Esc>:set hls!<CR>

" Gonna stick my plugins here, should put at end though
Plugin 'godlygeek/tabular'
Plugin 'syntastic'
Plugin 'sukima/xmledit'
Plugin 'tmhedburg/SimpylFold'
"Plugin 'racer-rust/vim-racer'
Plugin 'rust-lang/rust.vim'
Plugin 'surround.vim'
"Plugin 'Valloric/YouCompleteMe'


" for racket
autocmd bufread,bufnewfile *.lisp,*.rkt,*.scm setlocal equalprg=scmindent
autocmd filetype lisp,racket,scheme setlocal equalprg=scmindent

" This is for the HTML tag completion
iabbrev </ </<C-X><C-O>

filetype plugin on


if has("multi_byte")
    if &termencoding == ""
        let &termencoding = &encoding
    endif
    set encoding=utf-8
    setglobal fileencoding=utf-8
    "setglobal bomb
    set fileencodings=ucs-bom,utf-8,latin1
endif

" don't create swap files for files in the dropbox folder
autocmd BufNewFile,BufRead *
  \ if expand('%:~') =~ '^\~/Dropbox' |
  \   set noswapfile |
  \ else |
  \   set swapfile |
  \ endif

"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/



" Set auto syntax highlighting for Rust
au BufRead,BufNewFile *.rs set filetype=rust

" Theme
syntax enable
"set background=dark
colorscheme default

let g:ycm_rust_src_path = "~/.rust/src"
let g:racer_cmd="/home/timidger/.cargo/bin/racer"
let g:rustc_path="/usr/local/bin/rustc"
let g:rust_recommended_style = 1
let RUST_SRC_PATH="~/.rust/src"

:command WQ wq
:command Wq wq
:command W w
:command Q q

set pastetoggle=<F2>
set showmode

"Nerd Tree stuff
"autocmd VimEnter * NERDTree
"autocmd BufEnter * NERDTreeMirror
"CTRL-t to toggle tree view with CTRL-t
nmap <silent> <C-t> :NERDTreeToggle<CR>
"Set F2 to put the cursor to the nerdtree
nmap <silent> <F2> :NERDTreeFind<CR>

set mouse=a
set hidden
" Persistent undo
set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000
nnoremap <F2> :set invpaste paste?<CR>

" Toggle spellcheck
nn <F5> :setlocal spell! spell?<CR>
" set spell
" Default split stuff
set splitbelow
set splitright

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" Enable folding
" za to fold and unfold
set foldmethod=indent
set foldlevel=99
" space to fold and unfold
noremap <space> za

" Python syntax
" au BufNewFile,BufRead *.py
"     \ set tabstop=4
"     \ set softtabstop=4
"     \ set shiftwidth=4
"     \ set textwidth=79
"     \ set expandtab
"     \ set autoindent
"     \ set fileformat=unix

nmap <C-W>! <Plug>Kwbd

"set textwidth=80
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"let g:rustc_path=$HOME.'/.cargo/bin/rustc'

colorscheme darkblue
