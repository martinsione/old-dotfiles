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

    use {'wbthomason/packer.nvim', opt = true}
    use 'Yggdroot/indentLine'
    use 'christianchiarulli/nvcode-color-schemes.vim'
    use 'christoomey/vim-tmux-navigator'
    use 'kyazdani42/nvim-web-devicons'
    -- use 'mkitt/tabline.vim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-lua/popup.nvim'
    use 'romgrk/barbar.nvim'
    use 'tjdevries/cyclist.vim'
    use 'tpope/vim-commentary'
    use 'tweekmonster/startuptime.vim'
    use {'kyazdani42/nvim-tree.lua',        config = function() require('plugins.nvim-tree') end }
    use {'glepnir/dashboard-nvim',          config = function() require('plugins.dashboard') end }
    use {'glepnir/galaxyline.nvim',         config = function() require('plugins.galaxyline') end }
    use {'norcalli/nvim-colorizer.lua',     config = function() require('plugins.colorizer') end }
    use {'nvim-telescope/telescope.nvim',   config = function() require('plugins.telescope') end }
    use {'nvim-treesitter/nvim-treesitter', config = function() require('plugins.treesitter') end }
    use {'neoclide/coc.nvim',               config = function() vim.cmd('so ~/.config/nvim/lua/plugins/coc.vim') end }


    -- Git signs | can't decide which one to use
    use 'airblade/vim-gitgutter'
    -- use 'mhinz/vim-signify'
    -- use {'lewis6991/gitsigns.nvim',         config = function() require('plugins.gitsigns') end }

end)
