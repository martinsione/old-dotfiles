" General
source $HOME/.config/nvim/general/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/mappings.vim

if exists('g:vscode')
    source $HOME/.config/nvim/general/vscode.vim
else

"Theme
    source $HOME/.config/nvim/plug-config/themes/gruvbox.vim

"Plugin configuration

    source $HOME/.config/nvim/plug-config/coc.vim
    source $HOME/.config/nvim/plug-config/gitgutter.vim
    source $HOME/.config/nvim/plug-config/lightline.vim
    source $HOME/.config/nvim/plug-config/prettier.vim
    source $HOME/.config/nvim/plug-config/rainbow.vim
    source $HOME/.config/nvim/plug-config/start-screen.vim
    source $HOME/.config/nvim/plug-config/which-key.vim
    luafile $HOME/.config/nvim/lua/plug-colorizer.lua

    " source $HOME/.config/nvim/plug-config/airline.vim
    " source $HOME/.config/nvim/plug-config/closetags.vim
    " source $HOME/.config/nvim/plug-config/netrw.vim
    " source $HOME/.config/nvim/plug-config/polyglot.vim

endif
