# vim: filetype=sh
# executed by login shell

GREEN="\[$(tput setaf 2)\]"
RESET="\[$(tput sgr0)\]"

export GPG_TTY=$(tty)

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

#export RUBY_GEMS_INSTALL_BIN=/usr/local/lib/ruby/gems/2.6.0/bin
#export RUBY_HOME=/usr/local/opt/ruby/bin
#export PATH=$RUBY_HOME:$RUBY_GEMS_INSTALL_BIN:$PATH

# export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"
# export CPPFLAGS="-I/usr/local/opt/ruby/include"
# export CPPFLAGS="-I/usr/local/opt/ruby/include"

# rbenv (homebrew)
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
eval "$(rbenv init -)"

# install nvm from github
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# install yarn from site
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export GO_INSTALL_BIN=~/go/bin
export GO_HOME=/usr/local/opt/go/bin
export PATH=$GO_HOME:$GO_INSTALL_BIN:$PATH

# for building alacritty
# git cline ...; git checkout tags/v0.3.3 -b v0.3.3
# see my/repo/alacritty/INSTALL.md for instructions
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/my/work/shell:$PATH"
[ -r ~/my/priv/envars ] && . ~/my/priv/envars
. ~/.bashrc
