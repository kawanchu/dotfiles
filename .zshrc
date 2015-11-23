# SETTING
## complement
autoload -U compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

## color
autoload -U colors
colors

## dircolors
export LS_COLORS
if [ -f ~/.dircolors ]; then
  if type dircolors > /dev/null 2>&1; then
    eval $(dircolors ~/.dircolors)
  elif type gdircolors > /dev/null 2>&1; then
    eval $(gdircolors ~/.dircolors)
  fi
fi
if [ -n "$LS_COLORS" ]; then
    zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
fi

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
PROMPT="${fg[blue]}[%n@%m]%  ${reset_color}%~
%# "

## others
setopt no_beep
setopt print_eight_bit
setopt extended_glob
setopt no_flow_control
setopt interactive_comments

# ALIAS
alias g='git'
alias vi='vim'

# ENV
## rbenv
if [ -d "$HOME/.rbenv" ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

## python
if [ -d "$HOME/.pyenv" ]; then
  export PATH=~/.pyenv/bin:$PATH
  eval "$(pyenv init -)"
fi

## hub
if [ -f /usr/local/bin/hub ]; then
  eval "$(hub alias -s)"
fi

## local settings
if [ -f "$HOME/.zshrc_local" ]; then
    source "$HOME/.zshrc_local"
fi
