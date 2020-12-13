  " auto-install vim-plug
  if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  endif

  call plug#begin('~/.config/nvim/autoload/plugged')

    " Essentials
      Plug 'neoclide/coc.nvim', {'branch': 'release'}
      Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
      Plug 'junegunn/fzf.vim'
      Plug 'mhinz/vim-startify'               " Start Screen
      Plug 'airblade/vim-gitgutter'           " GIT integration
      Plug 'tpope/vim-fugitive'               " GIT integration
      Plug 'tpope/vim-commentary'             " Better Comments
      Plug 'tpope/vim-surround'               " Change sorrounding tags
    " Lua
      Plug 'norcalli/nvim-colorizer.lua'      " Colorizer
      Plug 'glepnir/galaxyline.nvim'          " Lua status line
      Plug 'kyazdani42/nvim-tree.lua'         " NERDTree in lua
      Plug 'kyazdani42/nvim-web-devicons'     " Devicons fork in lua
    " Treesitter
      Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " So the parsers get updated
      Plug 'sheerun/vim-polyglot'             " Better syntax highlighting
    "General
      Plug 'AndrewRadev/tagalong.vim'         " Auto change HTML tags
      Plug 'christoomey/vim-tmux-navigator'   " Navigate between tmux panes
      Plug 'luochen1990/rainbow'              " Rainbow brackets
      Plug 'tweekmonster/startuptime.vim'     " Test Startup time
    " Appearance
      Plug 'junegunn/goyo.vim'                " Zen mode
      Plug 'morhetz/gruvbox'                  " Gruvbox theme
      Plug 'christianchiarulli/nvcode-color-schemes.vim'

    " Unused plugins
      " Plug 'liuchengxu/vim-which-key'         " See what keys do
      " Plug 'itchyny/lightline.vim'            " Status Line
      " Plug 'ryanoasis/vim-devicons'           " Cool Icons
    " Not in the mood of taking care of lsp
      " Plug 'neovim/nvim-lspconfig'            " Lsp
      " Plug 'nvim-lua/completion-nvim'         " Autocompletion

call plug#end()
