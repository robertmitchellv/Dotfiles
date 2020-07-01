" @robertmitchellv
"
"  ___________
" <  .vimrc   >
"  -----------
"         \   ^__^
"          \  (oo)\_______
"             (__)\       )\/\
"                 ||----w |
"                 ||     ||

"
" my vim settings:
"

"
" vundle
"

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"
" my vundles
"
 
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'powerline/powerline'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'dracula/vim'
Plugin 'haishanh/night-owl.vim'
Plugin 'ayu-theme/ayu-vim'
Plugin 'chrisbra/csv.vim'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'jalvesaq/Nvim-R'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'vim-pandoc/vim-rmarkdown'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"
" how do I vundle?
"
 
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line 

"
" syntax
"

syntax enable

"
" colors
"

colorscheme ayu 

"
" sets
"

set termguicolors
set history=700
set textwidth=79
set encoding=utf-8
set modelines=0
set t_Co=256
" set background=dark
set laststatus=2
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=2
set colorcolumn=80
set incsearch
set hlsearch
set number
set showcmd
set cursorline
set wildmenu

"
" lets
"
 
let g:airline_powerline_fonts = 1 
" let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
" let ayucolor="dark"   " for dark version of theme
" let g:dracula_italic=1
" let g:dracula_termtrans=1
" let g:dracula_termcolors=256
" IndentLine {{
let g:indentLine_char = ''
let g:indentLine_first_char = ''
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0
" }}
let g:syntastic_enable_r_lintr_checker = 1
let g:syntastic_r_checkers = ['lintr']

"
" maps 
"

map <F2> :NERDTreeToggle<CR>
vmap <Space> <Plug>RDSendSelection
nmap <Space> <Plug>RDSendLine


