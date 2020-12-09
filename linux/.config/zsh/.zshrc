# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#----------------------------- ZSH config ------------------------------
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/export" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/export"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/apps" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/apps"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/alias" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/alias"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/bm-dirs" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/bm-dirs"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/bm-files" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/bm-files"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/cursor" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/cursor"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/icons" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/icons"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/path" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/path"

#------------------ History in chache directory ------------------------
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

#------------------ Enable colors and change prompt --------------------
autoload -U colors && colors	    # Load colors
setopt autocd		                # Automatically cd into typed directory.

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Vi mode
bindkey -v                          # Vi mode
export KEYTIMEOUT=1                 # Reduce vi timeout

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

#----------------------------- Prompt ----------------------------------
# PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

#------------------------ Change Caps to Escape ------------------------
sudo -n loadkeys $HOME/.local/bin/ttymaps.kmap 2>/dev/null

#-------------------------- Load Plugins -------------------------------
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
