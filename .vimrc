
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

"au FileType php call AddPHPFuncList()
"function AddPHPFuncList()
"    set dictionary-=/usr/share/vim/vimcurrent/AutoComplete/php_funclist.txt dictionary+=/usr/share/vim/vimcurrent/AutoComplete/php_funclist.txt
"    set complete-=k complete+=k
"endfunction
"
let mapleader=","

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'othree/xml.vim'
Bundle 'hallison/vim-markdown'
Bundle 'kien/ctrlp.vim'
Bundle 'mattn/emmet-vim'
"Bundle 'mattn/zencoding-vim'
Bundle 'vim-scripts/taglist.vim'
let Tlist_Show_One_File=1
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'
Bundle 'vim-scripts/pep8'
Bundle 'vim-scripts/Conque-Shell'
"Bundle 'FredKSchott/CoVim'
"let CoVim_default_name = 'Casa Taloyum'
"let CoVim_default_port = '8888'
"Bundle 'terryma/vim-multiple-cursors'
Bundle 'vim-scripts/python.vim--Vasiliev'
Bundle 'davidhalter/jedi-vim'

filetype plugin indent on

hi TabLineFill ctermfg=Gray ctermbg=Gray
hi TabLine ctermfg=blue ctermbg=gray
hi TabLineSel ctermfg=Red ctermbg=black

set ambiwidth=double
set autoread
set backspace=indent,eol,start
set expandtab
set hidden             " Hide buffers when they are abandoned
set ignorecase		" Do case insensitive matching
set lbr
set nocompatible
set nu
set shiftwidth=4
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set softtabstop=4
set smarttab
set smartcase		" Do smart case matching
set smartindent
set term=xterm
set tabstop=4
set incsearch
set autoindent
set hlsearch
"删除多余空格
"" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufEnter *.html  set tabstop=2|set shiftwidth=2|set expandtab
autocmd BufEnter *.js  set tabstop=2|set shiftwidth=2|set expandtab
map j gj
map k gk
map 0 ^


"set scrolloff=21
"set cursorcolumn
"set cursorline
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make

au filetype c           set omnifunc=ccomplete#Complete
au filetype javascript  set omnifunc=javascriptcomplete#Complete
au filetype php         set omnifunc=phpcomplete#Complete
au filetype css         set omnifunc=csscomplete#Complete
au filetype sql         set omnifunc=sqlcomplete#Complete
au filetype html        set omnifunc=htmlcomplete#CompleteTags
au filetype xml         set omnifunc=xmlcomplete#CompleteTags
au filetype python      set omnifunc=pythoncomplete#Complete    
au filetype ruby        set omnifunc=rubycomplete#Complete    

let &t_SI = "\<Esc>]12;purple\x7"
let &t_EI = "\<Esc>]12;blue\x7"

nmap <SPACE> <SPACE>:noh<CR>
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>

"syntax enable
"set background=dark
"colorscheme solarized
