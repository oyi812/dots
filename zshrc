# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# https://scriptingosx.com/2019/06/moving-to-zsh-part-2-configuration-files/

autoload -U colors && colors

alias l='exa -l -a -s modified --git --time-style long-iso --group-directories-first'
alias t='exa --tree --sort modified --colour auto'
alias v=nvim
alias h='history 1'

# red,blue,green,cyan,yellow,magenta,black,white 
PROMPT='%F{green}%*%f %F{cyan}%~%f '

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
