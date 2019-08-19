status --is-interactive; and source (anyenv init -|psub)

alias g="git"
alias vim="nvim"

set -g fish_user_paths "/usr/local/opt/gettext/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/ncurses/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/openssl/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/qt/bin" $fish_user_paths

set -gx LC_ALL en_US.UTF-8
set -gx LIBRARY_PATH "/usr/local/opt/openssl/lib/" $LIBRARY_PATH
set -gx LDFLAGS "-L/usr/local/opt/ncurses/lib" $LDFLAGS
set -gx LDFLAGS "-L/usr/local/opt/openssl/lib" $LDFLAGS
set -gx LDFLAGS "-L/usr/local/opt/readline/lib" $LDFLAGS
set -gx CPPFLAGS "-I/usr/local/opt/ncurses/include" $CPPFLAGS
set -gx CPPFLAGS "-I/usr/local/opt/openssl/include" $CPPFLAGS
set -gx CPPFLAGS "-I/usr/local/opt/readline/include" $CPPFLAGS

function brew
  set -l index (contains -i $HOME/.anyenv/envs/pyenv/shims $PATH)
  set PATH[$index] /bin
  command brew $argv
  set PATH[$index] $HOME/.anyenv/envs/pyenv/shims
end
