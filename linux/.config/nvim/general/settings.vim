" General
syntax enable                           " Enable syntax highlighing
set autoindent                          " Copy the indentation from previous line
set clipboard=unnamedplus               " Share system and vim clipboard
set cmdheight=2                         " Change cmd height
set encoding=utf-8 fileencoding=utf-8   " Sets encoding
set hidden                              " Keep multiple buffers open
set iskeyword+=-                      	" Treat dash separated words as a word text object
set mouse=a                             " Enables the mouse
set nobackup                            " Recommended by coc
set nowritebackup                       " Recommended by coc
set scrolloff=8                         " Scroll
set shortmess+=c                        " Don't pass messages to |ins-completion-menu|.
set signcolumn=yes                      " Always show the signcolumn
set smartindent                         " Inserts one extra level of indentation
set splitbelow splitright               " Fixes splitting
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set updatetime=50                       " Default is set to 4000

" Appearance
set cursorline                          " Enable highlighting of the current line
set colorcolumn=80                      " To avoid writing more than 80 characters per line
set noshowmode                          " Self explanatory
set nowrap                              " Display long lines as just one line
set number relativenumber               " Relative line numbers
set pumheight=10                        " Makes popup menu smaller
set ruler              		              " Show the cursor position all the time
set termguicolors                       " Required by colorizer and other themes
set title                               " Change the window title
set whichwrap+=<,>,[,],h,l

" Searching
set nohlsearch                          " Don't Highlight matches
set incsearch                           " Start searching while you are typing
set ignorecase                          " Searches are case insensitive
set smartcase                           " Unless they contain at least one capital letter
set path+=**                            " Search down into subfolders
set wildmenu                            " Display all matching files when we tab complete
set wildignorecase
set wildignore+=node_modules/**
set wildignore+=**/autoload/**

" Tabs
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab                           " Insert spaces instead of tab characters.
set smarttab                            " Insert spaces or tabs to go to the next indent of the next tabstop when the cursor is at the beginning of a line

let g:netrw_dirhistmax = 0              " It prevents it from generating .netrwhist
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank{higroup="IncSearch", timeout=500}
augroup END
autocmd BufWritePre * %s/\s\+$//e       " Remove extra whitespace on save
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
