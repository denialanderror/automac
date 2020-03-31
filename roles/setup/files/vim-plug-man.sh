#!/usr/bin/env bash
# Stolen with love and gratitude from: https://stories.abletech.nz/get-rid-of-your-vim-plugin-manager-7c8ff742f643

function set_group () {
  package_group=$1
  path="$HOME/.vim/pack/$package_group/start"
  mkdir -p "$path"
  cd "$path" || exit
}

function package () {
  repo_url=$1
  expected_repo=$(basename "$repo_url" .git)
  if [ -d "$expected_repo" ]; then
    cd "$expected_repo" || exit
    result=$(git pull --force --depth=1)
    echo "$expected_repo: $result"
  else
    echo "$expected_repo: Installing..."
    git clone -q "$repo_url" --depth=1
  fi
}

(
set_group general
package https://github.com/tpope/vim-sensible &
package https://github.com/itchyny/lightline.vim &
wait
) &

(
set_group syntax
package https://github.com/dense-analysis/ale &
wait
) &

(
set_group lang
package https://github.com/rust-lang/rust.vim &
wait
) &

(
set_group colorschemes
package https://github.com/morhetz/gruvbox &
wait
) &
wait
