# vim: filetype=sh
# executed by login shell

GREEN="\[$(tput setaf 2)\]"
RESET="\[$(tput sgr0)\]"

export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1="${GREEN}\A \w${RESET} "
export CLICOLOR=1

# opam - ocaml
# test -r /Users/davidhenderson/.opam/opam-init/init.sh && . /Users/davidhenderson/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

# brew go tools installation path
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH=$PATH:~/go/bin

source ~/.bashrc

[ -r ~/my/keys/envars ] && . ~/my/keys/envars
