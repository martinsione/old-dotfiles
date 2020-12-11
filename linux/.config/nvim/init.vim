if exists('g:vscode')
  source $HOME/.config/nvim/vscode/settings.vim
  source $HOME/.config/nvim/vscode/vscode.vim
  source $HOME/.config/nvim/vscode/mappings.vim
else

  " General
  source $HOME/.config/nvim/general/plugins.vim
  source $HOME/.config/nvim/general/settings.vim
  source $HOME/.config/nvim/general/mappings.vim

  " Themes
  " source $HOME/.config/nvim/plug-config/themes/gruvbox.vim
  colorscheme nvcode

  "Plugin configuration
  source $HOME/.config/nvim/plug-config/gitgutter.vim
  source $HOME/.config/nvim/plug-config/lightline.vim
  source $HOME/.config/nvim/plug-config/netrw.vim
  source $HOME/.config/nvim/plug-config/rainbow.vim
  source $HOME/.config/nvim/plug-config/start-screen.vim
  source $HOME/.config/nvim/plug-config/which-key.vim
  source $HOME/.config/nvim/plug-config/coc.vim
  luafile $HOME/.config/nvim/lua/treesitter.lua
  luafile $HOME/.config/nvim/lua/plug-colorizer.lua

  " luafile $HOME/.config/nvim/lua/statusline.lua
  " lua require 'statusline'.setup()

endif
