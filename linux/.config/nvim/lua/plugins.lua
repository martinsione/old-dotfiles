-- Auto install packer if missing
local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

vim.cmd[[autocmd BufWritePost plugins.lua PackerCompile]] vim.cmd [[packadd packer.nvim]]

local packer = require('packer')
return packer.startup(function()
    local use = use

    use 'mhinz/vim-signify'
    -- use 'airblade/vim-gitgutter'

    use {'wbthomason/packer.nvim', opt = true}
    use 'Yggdroot/indentLine'
    use 'christianchiarulli/nvcode-color-schemes.vim'
    use 'christoomey/vim-tmux-navigator'
    use 'kyazdani42/nvim-web-devicons'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-lua/popup.nvim'
    -- use 'mkitt/tabline.vim'
    use 'romgrk/barbar.nvim'
    use 'tpope/vim-commentary'
    use 'tjdevries/cyclist.vim'
    use 'tweekmonster/startuptime.vim'
    use {'kyazdani42/nvim-tree.lua',        config = require('plugins.nvim-tree')}
    use {'glepnir/dashboard-nvim',          config = require('plugins.dashboard')}
    use {'glepnir/galaxyline.nvim',         config = function() require('plugins.galaxyline') end }
    use {'norcalli/nvim-colorizer.lua',     config = function() require('plugins.colorizer') end }
    use {'nvim-telescope/telescope.nvim',   config = function() require('plugins.telescope') end }
    use {'nvim-treesitter/nvim-treesitter', config = function() require('plugins.treesitter') end }
    use {'neoclide/coc.nvim',               config = function() require('plugins.coc') end }

end)
