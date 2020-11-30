#----------------------------- ZSH config ------------------------------
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/export" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/export"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/apps" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/apps"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/alias" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/alias"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/cursor" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/cursor"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/icons" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/icons"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/path" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/path"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/dirs" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/dirs"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/files" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/files"

#------------------ History in chache directory ------------------------
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

#------------------ Enable colors and change prompt --------------------
autoload -U colors && colors	    # Load colors
setopt autocd		                # Automatically cd into typed directory.
stty stop undef		                # Disable ctrl-s to freeze terminal.
autoload -U compinit                # Basic auto/tab complete
zstyle ':completion:*' menu select  # Basic auto/tab complete
zmodload zsh/complist               # Basic auto/tab complete
compinit                            # Basic auto/tab complete
bindkey -v                          # Vi mode
export KEYTIMEOUT=1                 # Reduce vi timeout
_comp_options+=(globdots)		    # Include hidden files.

#------------------ Vim keys un tab complete menu ----------------------
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

#----------------------------- Promp ----------------------------------
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

#------------------------ Change Caps to Escape ------------------------
sudo -n loadkeys $HOME/.local/bin/ttymaps.kmap 2>/dev/null

#-------------------------- Load Plugins -------------------------------
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
