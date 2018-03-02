# local
[ -f "$HOME/.zshrc_local_top" ] && source "$HOME/.zshrc_local_top"

# umask
umask 002

# complement
autoload -U compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# color
autoload -U colors
colors

# dircolors
[ -f ~/.dircolors ] && eval $(dircolors ~/.dircolors)

# history
HISTFILE="$HOME/.zsh_history"
HISTSIZE=100000
SAVEHIST=100000
setopt share_history
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_reduce_blanks

# cd
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups

# prompt
PROMPT="${fg[white]}[%n@%m]%  ${reset_color}%~
%# "

# others
setopt no_beep
setopt print_eight_bit
setopt extended_glob
setopt no_flow_control
setopt interactive_comments

# alias
alias g='git'
alias rr='bundle exec rails'
alias vi='vim'
type nvim > /dev/null 2>&1  && alias vim='nvim'

# ssh
eval "$(ssh-agent)" > /dev/null 2>&1
ssh-add ~/.ssh/id_rsa > /dev/null 2>&1
[ -d "$HOME/.ssh/conf.d" ] && alias ssh="cat $HOME/.ssh/conf.d/*.config > $HOME/.ssh/config;ssh"

# anyenv
if [ -d "$HOME/.anyenv" ] ; then
  export PATH="$HOME/.anyenv/bin:$PATH"
  eval "$(anyenv init -)"
  for D in `\ls $HOME/.anyenv/envs`
  do
    export PATH="$HOME/.anyenv/envs/$D/shims:$PATH"
  done
fi

# rbenv
if [ -d "$HOME/.rbenv" ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

# rvm
[ -d "$HOME/.rvm" ] && export PATH="$HOME/.rvm/bin:$PATH"

# pyenv
if [ -d "$HOME/.pyenv" ]; then
  export PATH="$HOME/.pyenv/bin:$PATH"
  eval "$(pyenv init -)"
fi

if [ -d "$HOME/.pyenv/plugins/pyenv-virtualenv" ]; then
  eval "$(pyenv virtualenv-init -)"
  export PYENV_VIRTUALENV_DISABLE_PROMPT=1
fi

# gvm
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"

# gopath
if [ -d "$HOME/.go" ]; then
  export GOPATH="$HOME/.go"
  export PATH="$GOPATH/bin:$PATH"
fi

# jenv
if [ -d "$HOME/.jenv" ]; then
  export JENV_ROOT="$HOME/.jenv"
  export PATH="$JENV_ROOT/bin:$PATH"
  eval "$(jenv init -)"
fi

# nvm
if [ -d "$HOME/.nvm" ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
fi

# hub
[ -f /usr/local/bin/hub ] && eval "$(hub alias -s)"

# heroku
[ -d "/usr/local/heroku" ] && export PATH="/usr/local/heroku/bin:$PATH"

# torch
[ -d "$HOME/torch" ] && . $HOME/torch/install/bin/torch-activate

# go_appengine
[ -d "$HOME/.go_appengine" ] && export PATH="$HOME/.go_appengine:$PATH"

# OpenFst
[ -d "/vagrant/kaldi/tools/openfst" ] && export PATH="/vagrant/kaldi/tools/openfst/bin:$PATH"

# tns-completion-start
[ -f /home/vagrant/.tnsrc ] && source /home/vagrant/.tnsrc

# local
[ -f "$HOME/.zshrc_local_bottom" ] && source "$HOME/.zshrc_local_bottom"
