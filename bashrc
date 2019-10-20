# vim: filetype=sh
# executed by terminal shell
# functions and aliases reside here

alias v=nvim
#alias vs='nvim -S'
alias python=python3
alias a='open -n /Applications/Alacritty.app'
alias l='exa -l -a -s modified --git --time-style iso --group-directories-first'


md() {
  mkdir -p $1
  cd $1
}

mdd() {
  dt=$(date -u '+%y.%m.%d.')
  md $dt$1
}

pwgen() {
  LC_ALL=C tr -dc 'A-Za-z0-9!#$%&*~' </dev/urandom | head -c 16 ; echo
}
