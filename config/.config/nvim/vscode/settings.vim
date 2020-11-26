" General
set clipboard=unnamedplus               " Set to your default clipboard
set encoding=utf-8
set fileencoding=utf-8                  " The encoding written to file
set iskeyword+=-                      	" treat dash separated words as a word text object"
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set updatetime=50                       " Default is set to 4000
set nocompatible                        " Is set by default in neovim

" Searching
set hlsearch                            " Don't Highlight matches
set incsearch                           " Allow vim to start searching before pressing enter
set ignorecase                          " Searches are case insensitive
set smartcase                           " Unless they contain at least one capital letter
set path+=**                            " Search down into subfolders provides tab-completion for all file-related tasks
set wildmenu                            " Display all matching files when we tab complete

" Tabs
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab                           " Insert spaces instead of tab characters.
set smarttab                            " Insert spaces or tabs to go to the next indent of the next tabstop when the cursor is at the beginning of a line

" Highlight yanked text
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank{higroup="IncSearch", timeout=500}
augroup END

" Autocmd
autocmd BufWritePre * %s/\s\+$//e       " Remove extra whitespace on save
