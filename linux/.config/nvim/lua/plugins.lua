vim.cmd[[autocmd BufWritePost plugins.lua PackerCompile]]
vim.cmd [[packadd packer.nvim]]

local packer = require('packer')
return packer.startup(function()
    local use = use
    use {'wbthomason/packer.nvim', opt = true}
    use 'Yggdroot/indentLine'
    use 'airblade/vim-gitgutter'
    use 'christianchiarulli/nvcode-color-schemes.vim'
    use 'christoomey/vim-tmux-navigator'
    use 'kyazdani42/nvim-web-devicons'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-lua/popup.nvim'
    use 'romgrk/barbar.nvim'
    use 'tpope/vim-commentary'
    use 'tweekmonster/startuptime.vim'

    use {'glepnir/dashboard-nvim',          config = require('plugins.dashboard')}
    use {'glepnir/galaxyline.nvim',         config = require('plugins.galaxyline')}
    use {'kyazdani42/nvim-tree.lua',        config = require('plugins.nvim-tree')}
    use {'norcalli/nvim-colorizer.lua',     config = require('plugins.colorizer')}
    use {'nvim-telescope/telescope.nvim',   config = require('plugins.telescope')}
    use {'nvim-treesitter/nvim-treesitter', config = require('plugins.treesitter')}
    use {'neoclide/coc.nvim',               config = require('plugins.coc')}

end)
