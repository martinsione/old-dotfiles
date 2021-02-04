" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/home/martin/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/martin/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/martin/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/martin/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/martin/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, err = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(err)
  end
end

_G.packer_plugins = {
  ["barbar.nvim"] = {
    loaded = true,
    path = "/home/martin/.local/share/nvim/site/pack/packer/start/barbar.nvim"
  },
  ["coc.nvim"] = {
    config = { "\27LJ\2\nI\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0*so ~/.config/nvim/lua/plugins/coc.vim\bcmd\bvim\0" },
    loaded = true,
    path = "/home/martin/.local/share/nvim/site/pack/packer/start/coc.nvim"
  },
  ["cyclist.vim"] = {
    loaded = true,
    path = "/home/martin/.local/share/nvim/site/pack/packer/start/cyclist.vim"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22plugins.dashboard\frequire\0" },
    loaded = true,
    path = "/home/martin/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23plugins.galaxyline\frequire\0" },
    loaded = true,
    path = "/home/martin/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  indentLine = {
    loaded = true,
    path = "/home/martin/.local/share/nvim/site/pack/packer/start/indentLine"
  },
  ["nvcode-color-schemes.vim"] = {
    loaded = true,
    path = "/home/martin/.local/share/nvim/site/pack/packer/start/nvcode-color-schemes.vim"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22plugins.colorizer\frequire\0" },
    loaded = true,
    path = "/home/martin/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22plugins.nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/martin/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23plugins.treesitter\frequire\0" },
    loaded = true,
    path = "/home/martin/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/martin/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    path = "/home/martin/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/martin/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/martin/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["startuptime.vim"] = {
    loaded = true,
    path = "/home/martin/.local/share/nvim/site/pack/packer/start/startuptime.vim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22plugins.telescope\frequire\0" },
    loaded = true,
    path = "/home/martin/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/martin/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/home/martin/.local/share/nvim/site/pack/packer/start/vim-gitgutter"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/home/martin/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator"
  }
}

-- Config for: dashboard-nvim
try_loadstring("\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22plugins.dashboard\frequire\0", "config", "dashboard-nvim")
-- Config for: telescope.nvim
try_loadstring("\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22plugins.telescope\frequire\0", "config", "telescope.nvim")
-- Config for: nvim-tree.lua
try_loadstring("\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22plugins.nvim-tree\frequire\0", "config", "nvim-tree.lua")
-- Config for: galaxyline.nvim
try_loadstring("\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23plugins.galaxyline\frequire\0", "config", "galaxyline.nvim")
-- Config for: nvim-treesitter
try_loadstring("\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23plugins.treesitter\frequire\0", "config", "nvim-treesitter")
-- Config for: nvim-colorizer.lua
try_loadstring("\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22plugins.colorizer\frequire\0", "config", "nvim-colorizer.lua")
-- Config for: coc.nvim
try_loadstring("\27LJ\2\nI\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0*so ~/.config/nvim/lua/plugins/coc.vim\bcmd\bvim\0", "config", "coc.nvim")
END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
