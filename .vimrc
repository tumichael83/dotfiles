" Use vim settings, rather than vi settings
" This must be first, because it changes other options as a side effect.
set nocompatible

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
	Plug 'itchyny/lightline.vim'
	Plug 'rakr/vim-one'
  Plug 'morhetz/gruvbox'
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'preservim/nerdtree'
  Plug 'preservim/vim-indent-guides'
call plug#end()

set ai															" auto indenting
set ruler														" show cursor position
set mouse=a													" enable mouse
set number													" show line numbers

set t_Co=256												" iterm supports 256 colors
syntax on														" syntax highlighting
set termguicolors
colorscheme dracula

set laststatus=2			              " lightline enabling thing
set noshowmode				              " show what mode we're editing in lightline
set showcmd						              " show command
let g:lightline = {
			\ 'colorscheme':	'dracula',
			\ }

set expandtab				                " use spaces for indenting
set tabstop=2				                " a tab appears as 2 spaces
set softtabstop=2		                " when hitting <BS>, pretend like removed tab
set shiftwidth=2		                " spaces for autoindenting
set breakindent			                " visual indentation at linebreak
set linebreak				                " linebreak at word boundaries
set backspace=indent,eol,start      " make backspace feel natural

set hlsearch                        " highlight search results
set incsearch                       " incremental search highlight

set modelines=0			                " Security

