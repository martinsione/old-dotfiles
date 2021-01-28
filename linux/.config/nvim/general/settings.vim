" Appearance
set cursorline
set noshowmode
set nowrap
set pumheight=10
set termguicolors
set title

" General
set clipboard=unnamedplus
set cmdheight=2
set hidden
set mouse=a
set nobackup
set noswapfile
set nowritebackup
set nu rnu
set sb spr
set scrolloff=8
set shortmess+=c
set signcolumn=yes
set timeoutlen=500
set updatetime=100

" Searching
set ignorecase
set nohlsearch
set path+=**
set smartcase
set wildignore+=.git/**/*
set wildignore+=autoload/**
set wildignore+=node_modules/**
set wildignorecase

" Tabs
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

let g:netrw_dirhistmax = 0
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank{higroup="IncSearch", timeout=700}
augroup END
autocmd BufWritePre * %s/\s\+$//e
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
