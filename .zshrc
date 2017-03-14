# SETTING
## umask
umask 002

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
PROMPT="${fg[white]}[%n@%m]%  ${reset_color}%~
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
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
fi

if [ -d "$HOME/.pyenv/plugins/pyenv-virtualenv" ]; then
  eval "$(pyenv virtualenv-init -)"
  export PYENV_VIRTUALENV_DISABLE_PROMPT=1
fi

## gvm
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"

## go
if [ -d "$HOME/.go" ]; then
  export GOPATH="$HOME/.go"
  export PATH="$GOPATH/bin:$PATH"
fi

## hub
[ -f /usr/local/bin/hub ] && eval "$(hub alias -s)"

## heroku
[ -d "/usr/local/heroku" ] && export PATH="/usr/local/heroku/bin:$PATH"

## nvm
if [ -d "$HOME/.nvm" ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
fi

## torch
[ -d "$HOME/torch" ] && . $HOME/torch/install/bin/torch-activate

## local settings
[ -f "$HOME/.zshrc_local" ] && source "$HOME/.zshrc_local"

## go_appengine
[ -d "$HOME/.go_appengine" ] && export PATH=$PATH:$HOME/.go_appengine

## OpenFst
[ -d "/vagrant/kaldi/tools/openfst" ] && export PATH=$PATH:/vagrant/kaldi/tools/openfst/bin

## ssh
[ -d "$HOME/.ssh/conf.d" ] && alias ssh="cat $HOME/.ssh/conf.d/*.config > $HOME/.ssh/config;ssh"

## tns-completion-start
if [ -f /home/vagrant/.tnsrc ]; then
    source /home/vagrant/.tnsrc
fi
