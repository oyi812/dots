# vim: filetype=sh
# executed by login shell

GREEN="\[$(tput setaf 2)\]"
RESET="\[$(tput sgr0)\]"

export BASH_SILENCE_DEPRECATION_WARNING=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1="${GREEN}\A \w${RESET} "
export CLICOLOR=1

export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
export HISTFILE=~/.bash_eternal_history
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# opam - ocaml
# test -r /Users/davidhenderson/.opam/opam-init/init.sh && . /Users/davidhenderson/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

# source ~/google-cloud-sdk/path.bash.inc

export RUBY_GEMS_INSTALL_BIN=/usr/local/lib/ruby/gems/2.6.0/bin
export RUBY_HOME=/usr/local/opt/ruby/bin
export PATH=$RUBY_HOME:$RUBY_GEMS_INSTALL_BIN:$PATH
# export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"
# export CPPFLAGS="-I/usr/local/opt/ruby/include"
# export CPPFLAGS="-I/usr/local/opt/ruby/include"

export GO_INSTALL_BIN=~/go/bin
export GO_HOME=/usr/local/opt/go/bin
export PATH=$GO_HOME:$GO_INSTALL_BIN:$PATH


[ -r ~/my/priv/envars ] && . ~/my/priv/envars

. ~/.bashrc
