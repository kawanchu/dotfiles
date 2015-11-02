autoload -Uz compinit; compinit

# rbenv
if [ -d "$HOME/.rbenv" ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

# hub
if [ -f /usr/local/bin/hub ]; then
  eval "$(hub alias -s)"
fi

# local settings
if [ -f "$HOME/.zshrc_local" ]; then
    source "$HOME/.zshrc_local"
fi
