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
  dt=$(date -u '+%y-%m-%d')
  if test -z "$1"
  then mkdir $dt; cd $dt
  else mkdir $dt.$1; cd $dt.$1
  fi
}

# find in history | pbcopy
fh() {
  if test -z "$1"
  then history | fzf | while read a b c d; do echo "$d"; done | tr -d '\n' | pbcopy
  else history | rg "$1"
  fi
}

# find pod
fp() {
  read pod < <(kubectl get po | fzf | awk '{printf "%s",$1}')
}

# rg and replace in current sub-tree
rr() {
  # TODO better to escape manually or test with various quotation marks
  # local from="$(echo '$1' | sed 's/[]\/$*.^|[]/\\&/g')"
  rg -l0 "$1" | xargs -n 1 -0 sed -i '' "s/$1/$2/g"
}

vv() {
  tmux split-window -h -p 60 'nvim --cmd redraw'
}

w1() { tmux select-window -t 1 ; }
w2() { tmux select-window -t 2 ; }
w3() { tmux select-window -t 3 ; }
w4() { tmux select-window -t 4 ; }
w5() { tmux select-window -t 5 ; }
w6() { tmux select-window -t 6 ; }
w7() { tmux select-window -t 7 ; }
w8() { tmux select-window -t 8 ; }
w9() { tmux select-window -t 9 ; }
w10() { tmux select-window -t 10 ; }
w11() { tmux select-window -t 11 ; }
w12() { tmux select-window -t 12 ; }

pwgen() {
  LC_ALL=C tr -dc 'A-Za-z0-9!#$%&*~' </dev/urandom | head -c 16 ; echo
}

urlencode() {
    local length="${#1}"
    for (( i = 0; i < length; i++ )); do
        local c="${1:i:1}"
        case $c in
            [a-zA-Z0-9.~_-]) printf "$c" ;;
            *) printf '%%%02X' "'$c" ;;
        esac
    done
}

urldecode() {
    local url_encoded="${1//+/ }"
    printf '%b' "${url_encoded//%/\\x}"
}
