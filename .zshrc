# SETTING
## complement
autoload -U compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

## color
autoload -U colors
colors

## history
HISTFILE="$HOME/.zsh_history"
HISTSIZE=100000
SAVEHIST=100000
setopt share_history
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_reduce_blanks

## cd
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups

## prompt
PROMPT="[%n@%m]%  %~
%# "

## others
setopt no_beep
setopt print_eight_bit
setopt extended_glob
setopt no_flow_control
setopt interactive_comments

# ALIAS
alias g='git'

# ENV
## rbenv
if [ -d "$HOME/.rbenv" ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

## anaconda3
if [ -d "$HOME/anaconda3" ]; then
  export PATH="$HOME/anaconda3/bin:$PATH"
fi

## hub
if [ -f /usr/local/bin/hub ]; then
  eval "$(hub alias -s)"
fi

## local settings
if [ -f "$HOME/.zshrc_local" ]; then
    source "$HOME/.zshrc_local"
fi
