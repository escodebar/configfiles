set nocompatible
filetype off

set rtp+=~/.nvim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'autozimu/LanguageClient-neovim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'honza/vim-snippets'
Plugin 'neovim/python-client'
Plugin 'scrooloose/nerdtree'
Plugin 'shime/vim-livedown'
Plugin 'simnalamburt/vim-mundo'
Plugin 'SirVer/ultisnips'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rhubarb'
Plugin 'tpope/vim-sensible'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-syntastic/syntastic'
Plugin 'wakatime/vim-wakatime'
Plugin 'romainl/flattened'

call vundle#end()  
filetype plugin indent on

colorscheme flattened_light
imap jj <Esc>
set backspace=eol,start,indent
set background=light
set encoding=utf8
set ffs=unix,dos,mac
set hlsearch
set incsearch
set lazyredraw
set laststatus=2
set magic
set mat=2
set mouse=a
set nobackup
set noerrorbells
set noshowmode
set noswapfile
set novisualbell
set nowritebackup
set number
set ruler
set showmatch
set smartindent
set splitbelow
set splitright
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatusLineFlag()}
set statusline+=%*
set ttimeoutlen=50
set whichwrap+=<,>,h,l
set wildignore+=*/bin/*
set wildignore+=*/include/*
set wildignore+=*/lib/*,*/lib64/*
set wildignore+=*/media/*
set wildignore+=*/man/*
set wildignore+=*/share/*
set wildignore+=*.pyo,*.pyc,*/__pycache__/*
set wildignore+=*.sqlite3
set wildmenu
set wildmode=longest:full
set wrap
syntax enable
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

let g:airline_powerline_fonts=1
let g:airline_theme='base16'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

let g:jedi#completions_enabled=1
let g:jedi#popup_on_dot=0
let g:jedi#show_call_signatures=2

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_c_checkers = ['splint', 'clang_check', 'make', 'gcc']
let g:syntastic_html_checkers = ['tidy']
let g:syntatsic_javascript_checkers=['eslint']
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args ='--doctests --ignore=E221,E222,E251,E272,E241,E203'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetDirectories=['~.nvim/UltiSnips', 'UltiSnips', '~/.vnim/bundle/vim-snippets/UltiSnips']
