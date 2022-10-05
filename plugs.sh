#!/usr/bin/env sh

# Enable extended globbing (we need it later)
shopt -s extglob

plugins=(
  arcticicestudio/nord-vim
  voldikss/vim-floaterm
  gcmt/taboo.vim
  hashivim/vim-terraform
  preservim/nerdtree
)

pack=$HOME/.local/share/nvim/site/pack
rm -rf "$pack"
mkdir -p "$pack"

installplugin() {
  local plugin="$(echo "$1" | sed -e 's/.*[\/]//' -e 's/^vim-//' -e 's/\.vim//')"
  local pluginpath="$pack/$plugin/start/$plugin"
  git clone --depth=1 -q https://github.com/$1.git "$pluginpath"
  rm -rf "$pluginpath"/.git*
  rm -rf "$pluginpath"/README*
  rm -f "$pluginpath"/*.@(md|mdown|mkdown|markdown)
  rm -rf "$pluginpath"/test
}

for repo in ${plugins[@]}; do
  installplugin "$repo" &
done
wait
