if exists('g:vscode')
  source $HOME/.config/nvim/general/vscode.vim
else

  " General
  source $HOME/.config/nvim/general/plugins.vim
  source $HOME/.config/nvim/general/settings.vim
  source $HOME/.config/nvim/general/mappings.vim
  colorscheme nvcode

  "Plugin configuration
  source $HOME/.config/nvim/plug-config/gitgutter.vim
  source $HOME/.config/nvim/plug-config/start-screen.vim
  source $HOME/.config/nvim/plug-config/coc.vim
  lua require 'init'

  " source $HOME/.config/nvim/plug-config/lightline.vim
  " source $HOME/.config/nvim/plug-config/which-key.vim
endif
