" General
set autoindent                          " Copy the indentation from previous line
set clipboard=unnamedplus               " Share system and vim clipboard
set encoding=utf-8 fileencoding=utf-8
set hidden                              " Keep multiple buffers open
set iskeyword+=-                      	" Treat dash separated words as a word text object
set mouse=a                             " Enables the mouse
set nobackup                            " Recommended by coc
set nowritebackup                       " Recommended by coc
set scrolloff=8                         " Scroll
set shortmess+=c                        " Don't pass messages to |ins-completion-menu|.
set splitbelow splitright               " Fixes splitting
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set updatetime=50                       " Default is set to 4000
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

" Highlight yanked text
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank{higroup="IncSearch", timeout=500}
augroup END

" Autocmd
autocmd BufWritePre * %s/\s\+$//e       " Remove extra whitespace on save
au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
