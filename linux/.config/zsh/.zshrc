# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#----------------------------- ZSH config ------------------------------
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/exports" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/exports"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/cursor" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/cursor"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/icons" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/icons"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/alias" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/alias"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/bm-dirs" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/bm-dirs"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/bm-files" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/bm-files"

#------------------ History in chache directory ------------------------
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Options section
setopt appendhistory                                            # Immediately append history instead of overwriting
setopt autocd                                                   # if only directory path is entered, cd there.
setopt correct                                                  # Auto correct mistakes
setopt extendedglob                                             # Extended globbing. Allows using regular expressions with *
setopt globdots                                                 # Show hidden files
setopt histignorealldups                                        # If a new command is a duplicate, remove the older one
setopt nobeep                                                   # No beep
setopt nocaseglob                                               # Case insensitive globbing
setopt nocheckjobs                                              # Don't warn about running processes when exiting
setopt numericglobsort                                          # Sort filenames numerically when it makes sense
setopt rcexpandparam                                            # Array expension with parameters
WORDCHARS=${WORDCHARS//\/[&.;]}

# Completions
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'       # Case insensitive tab completion
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"         # Colored completion (different colors for dirs/files/etc)
zstyle ':completion:*' rehash true                              # automatically find new executables in path
zstyle ':completion:*' menu select                              # Menu select
zmodload zsh/complist                                           # To have vim keybindings on menu select

# Speed up completions
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

# Vi mode
bindkey -v                          # Vi mode
export KEYTIMEOUT=1                 # Reduce vi timeout

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# Theming section
autoload -U compinit colors zcalc
compinit -d
colors

#------------------------ Change Caps to Escape ------------------------
sudo -n loadkeys $HOME/.local/bin/ttymaps.kmap 2>/dev/null

#-------------------------- Load Plugins -------------------------------
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
[[ ! -f ~/dotfiles/linux/.config/zsh/.p10k.zsh ]] || source ~/dotfiles/linux/.config/zsh/.p10k.zsh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
