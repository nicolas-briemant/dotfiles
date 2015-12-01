" # cd && rm -rf ~/.vim
" # git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" # git clone https://gist.github.com/dd3dadf4e3e59acf768e.git ~/vimrc
" # mv ~/vimrc/.vimrc ~/ && rm -rf ~/vimrc
" # wget http://blog.toddwerth.com/entry_files/8/ir_black.vim
" # mkdir ~/.vim/colors && mv ir_black.vim ~/.vim/colors
" # vim +PluginInstall +qall

set nocompatible
set encoding=utf-8 
set fileencoding=utf-8

filetype off

let root='~/.vim'
let bundle_dir=root.'/bundle'
exec 'set runtimepath+='.bundle_dir.'/Vundle.vim'
call vundle#rc(bundle_dir)

Bundle 'gmarik/vundle'

Bundle 'ervandew/supertab'
Bundle 'godlygeek/tabular'
Bundle 'tpope/vim-surround'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-fugitive'
Bundle 'vim-scripts/tComment'
Bundle 'jonathanfilip/vim-lucius'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'mxw/vim-jsx'
Bundle 'Raimondi/delimitMate'
Bundle 'elzr/vim-json'
Bundle 'plasticboy/vim-markdown'
Bundle 'evanmiller/nginx-vim-syntax'
Bundle 'digitaltoad/vim-jade'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'groenewege/vim-less'
Bundle 'kchmck/vim-coffee-script'

" lucius
" syntax on
" set background=dark
" let g:solarized_termcolors=256
" let g:solarized_termtrans=1
" colorscheme lucius

exec 'set directory='.root.'/swap,.'

set expandtab
set tabstop=2
set shiftwidth=2
set modeline
set modelines=1
set bs=2
set number
set laststatus=2
set hlsearch
set cursorline
" set textwidth=80
set nowrap

if exists('+colorcolumn')
  set colorcolumn=+1
endif

let mapleader=','

nmap <Leader>= :Tab /=<CR>
vmap <Leader>= :Tab /=<CR>
nmap <Leader>: :Tab /:\zs<CR>
vmap <Leader>t :Tab /\|<CR>
nmap <C-l> :nohlsearch<CR>

let g:vim_markdown_folding_disabled=1

nnoremap <Leader>m :w <BAR> !lessc % > %:t:r.css<CR><space>

set wildmenu
set wildmode=longest,list,full

filetype plugin indent on
