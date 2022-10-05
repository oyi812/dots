# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# https://scriptingosx.com/2019/06/moving-to-zsh-part-2-configuration-files/

autoload -U colors && colors

alias l='exa -l -a -s modified --git --time-style long-iso --group-directories-first'
alias t='exa --tree --sort modified --colour auto'
alias v=nvim
alias h='history 1'

function gg() {
  rg --hidden -i -g '!.git/' "$1"
}

function pwgen() {
  </dev/urandom | LC_ALL=C tf -dc A-Za-z0-9 | head -c16 | pbcopy
}

function gitbranch() {
  repo="$(git branch --show-current 2> /dev/null)"
  [ ! -z "${repo}" ] && echo "${repo} "
}

# red,blue,green,cyan,yellow,magenta,black,white 
setopt PROMPT_SUBST
export PROMPT='%F{green}%*%f %F{cyan}%~%f %F{red}$(gitbranch)%f'

HISTSIZE=10000
SAVEHIST=20000
HISTFILESIZE=600000

setopt hist_ignore_all_dups
setopt hist_ignore_space

# https://the.exa.website/docs/colour-themes
export EXA_COLORS="da=1;32"
export GPG_TTY=$(tty)

export GO_INSTALL_BIN=~/go/bin
export GO_HOME=/usr/local/opt/go/bin
export PATH=$GO_HOME:$GO_INSTALL_BIN:$PATH
