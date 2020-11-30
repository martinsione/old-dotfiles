if exists('g:vscode')
    source $HOME/.config/nvim/vscode/settings.vim
    source $HOME/.config/nvim/vscode/vscode.vim
    source $HOME/.config/nvim/vscode/mappings.vim
else

" General
    source $HOME/.config/nvim/general/plugins.vim
    source $HOME/.config/nvim/general/settings.vim
    source $HOME/.config/nvim/general/mappings.vim
    source $HOME/.config/nvim/plug-config/themes/gruvbox.vim

"Plugin configuration
    luafile $HOME/.config/nvim/lua/plug-colorizer.lua
    source $HOME/.config/nvim/plug-config/gitgutter.vim
    source $HOME/.config/nvim/plug-config/lightline.vim
    source $HOME/.config/nvim/plug-config/netrw.vim
    source $HOME/.config/nvim/plug-config/rainbow.vim
    source $HOME/.config/nvim/plug-config/start-screen.vim
    source $HOME/.config/nvim/plug-config/which-key.vim
    source $HOME/.config/nvim/plug-config/coc.vim

    " source $HOME/.config/nvim/plug-config/airline.vim
    " source $HOME/.config/nvim/plug-config/closetags.vim
    " source $HOME/.config/nvim/plug-config/polyglot.vim
    " source $HOME/.config/nvim/plug-config/prettier.vim
endif
