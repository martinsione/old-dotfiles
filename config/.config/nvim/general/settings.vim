" " General
" syntax enable                           " Enable syntax highlighing
set autoindent                          " Good auto indent
set clipboard=unnamedplus               " Set to your default clipboard
set cmdheight=1                         " Change command height
set encoding=utf-8
set hidden                              " Required to keep multiple buffers open multiple buffers
set iskeyword+=-                      	" treat dash separated words as a word text object"
set nobackup                            " Recommended by coc
set nowritebackup                       " Recommended by coc
set shortmess+=c                        " Don't pass messages to |ins-completion-menu|.
set signcolumn=yes                      " Always show the signcolumn, otherwise it would shift the text each time
set smartindent                         " Makes indenting smart
set splitbelow splitright               " Fixes splitting
set timeoutlen=300                      " By default timeoutlen is 1000 ms
set updatetime=100                      " Default is set to 4000
set formatoptions-=cro                  " Stop newline continution of comments
set ttyfast                             " Make vim go faster
set nocompatible                        " Is set by default in neovim

" Searching
set nohlsearch                          " Don't Highlight matches
set incsearch                           " Allow vim to start searching before pressing enter
set ignorecase                          " Searches are case insensitive
set smartcase                           " Unless they contain at least one capital letter
set path+=**                            " Search down into subfolders provides tab-completion for all file-related tasks
set wildmenu                            " Display all matching files when we tab complete

" Tabs
set expandtab
set shiftwidth=4
set showtabline=4                       " Always show tabs
set softtabstop=4                       " Tab acting as tab when deleting
set tabstop=4

" Appearance
set cursorline                          " Enable highlighting of the current line
" set guicursor=                          " Set the cursor to block always
set nowrap                              " Display long lines as just one line
set number relativenumber               " Relative line numbers
set pumheight=10                        " Makes popup menu smaller
set ruler              		            " Show the cursor position all the time
set termguicolors                       " Required by colorizer and other themes
set title                               " Change the window title
set t_Co=256
set t_ut=

" Autocmd
autocmd BufWritePre * %s/\s\+$//e       " Remove extra whitespace on save
autocmd BufWritePost ~/.local/src/dwmblocks/blocks.h !cd ~/.local/src/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid dwmblocks & }
autocmd BufWritePost ~/.local/src/dwm/config.h !cd ~/.local/src/dwm/ && {sudo make install}
au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
