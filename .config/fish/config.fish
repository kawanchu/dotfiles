status --is-interactive; and source (anyenv init -|psub)

alias g="git"

set -g fish_user_paths "/usr/local/opt/gettext/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/qt@5.5/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/openssl/bin" $fish_user_paths
set -gx LC_ALL en_US.UTF-8
set -gx LIBRARY_PATH "/usr/local/opt/openssl/lib/" $LIBRARY_PATH
set -gx LDFLAGS "-L/usr/local/opt/openssl/lib"
set -gx CPPFLAGS "-I/usr/local/opt/openssl/include"
