#    _________  _   _ ____   ____ 
#   |__  / ___|| | | |  _ \ / ___|
#     / /\___ \| |_| | |_) | |    
#  _ / /_ ___) |  _  |  _ <| |___ 
# (_)____|____/|_| |_|_| \_\\____|

# STARSHIP PROMPT
eval "$(starship init zsh)"

# Plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.config/zsh_plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh

ZSH_AUTOSUGGEST_STRATEGY=(completion history)

# VAR
export PATH=/home/nullboi/docs/scripts:$PATH
export EDITOR=nvim

# ALIASES
alias zshconfig='nvim ~/.zshrc'
alias reload='source ~/.zshrc'

alias vim='nvim'
alias n='nnn -e'
alias notes='n ~/docs/notes'

alias ls='ls --color=always'
alias grep='grep --color=always'
alias mount='udisksctl mount -b'
alias umount='udisksctl unmount -b'

alias pt='ping -c 1 www.archlinux.org'

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

# CONFIG
zstyle ':completion:*' menu select
zstyle :compinstall filename '/home/nullboi/.zshrc'

autoload -Uz compinit
compinit
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
# bindkey -v
