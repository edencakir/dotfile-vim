set runtimepath+=~/.vim_runtime

set nocompatible              " be iMproved, required
set clipboard=unnamed
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'wincent/command-t'
Plugin 'vim-airline/vim-airline'
Plugin 'Chiel92/vim-autoformat'
Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
" fails:  Bundle 'Valloric/YouCompleteMe'
source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

" If installed using Homebrew
set rtp+=/usr/local/opt/fzf

" Configuration of syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

try
    source ~/.vim_runtime/my_configs.vim
catch
endtry
syntax enable
syntax on
" All of your Plugins must be added before the following line
call vundle#end()            " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

filetype plugin indent on    " required
let g:airline#extensions#tabline#enabled = 1
let g:gitgutter_enabled = 1
set updatetime=100
set ttyfast
set autoread
set background=dark
set number
set ruler
set relativenumber
set showmatch
set showmode
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent
set smartindent
set ignorecase
set undofile
set colorcolumn=85
set laststatus=2
" Remember more history
set history=1000
set undolevels=5000
" Incremental search when /
set incsearch
" Better window splitting start locations
set splitbelow
set splitright
" Lets vim set the title of the console
set title
" Wrap comments at 80
set textwidth=80
set wrap
set showcmd
" Disable console vim from attepting to connect to the X display, which may
" slow things down for a few seconds
set cb="exclude:.*"
set tags=tags;/
set cursorline

colorscheme solarized

let mapleader = ","
nmap <leader>ne :NERDTreeToggle<cr>
" nmap <leader>ff :FuzyFinder<cr>
nmap <leader>a :Autoformat<cr>
nnoremap <leader>gs :Gstatus<CR><C-w>20+
"strip all trailing whitespace in the current file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

