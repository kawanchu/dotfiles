status --is-interactive; and source (anyenv init -|psub)

alias g="git"
alias vim="nvim"

set -g fish_user_paths "/usr/local/opt/gettext/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/ncurses/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/openssl@1.1/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/qt/bin" $fish_user_paths

set -gx LC_ALL en_US.UTF-8
set -gx LIBRARY_PATH "/usr/local/opt/openssl@1.1/lib/" $LIBRARY_PATH
set -gx LDFLAGS "-L/usr/local/opt/ncurses/lib" $LDFLAGS
set -gx LDFLAGS "-L/usr/local/opt/openssl@1.1/lib" $LDFLAGS
set -gx LDFLAGS "-L/usr/local/opt/readline/lib" $LDFLAGS
set -gx CPPFLAGS "-I/usr/local/opt/ncurses/include" $CPPFLAGS
set -gx CPPFLAGS "-I/usr/local/opt/openssl@1.1/include" $CPPFLAGS
set -gx CPPFLAGS "-I/usr/local/opt/readline/include" $CPPFLAGS
set -gx PATH "/Users/kawahito.shinpei/Applications/fabric-samples/bin" $PATH
set -gx PATH "/Users/kawahito.shinpei/.ghq/github.com/flutter/flutter/bin" $PATH

function brew
  set -xl PATH $PATH
  if type -q pyenv; and contains (pyenv root)/shims $PATH
    set -e PATH[(contains -i (pyenv root)/shims $PATH)]
  end
  command brew $argv
end
