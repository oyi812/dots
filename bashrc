# vim: filetype=sh
# executed by terminal shell
# functions and aliases reside here

alias v=nvim
#alias vs='nvim -S'
alias l='exa -l -s modified --git --time-style iso --group-directories-first'


md() {
  mkdir -p $1
  cd $1
}

mdd() {
  dt=$(date -u '+%y.%m.%d.')
  md $dt$1
}
