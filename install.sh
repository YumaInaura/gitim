#!/usr/bin/env bash -eu

readonly basedir=$(dirname "$0")
readonly tool_name=gitim

mkdir -p "$HOME/.gitim"

readonly bin_path="$HOME/.gitim/bin"
rm -rf "$bin_path"
cp -rf "$basedir/bin"  "$bin_path"

echo ==============================================
echo Installed to "$bin_path"
echo -=============================================
ls -la "$bin_path"

readonly export_line='PATH="$HOME/.gitim:$PATH" # '"$tool_name"  

cat <<'EOM'
==============================================
Put bellow line to your rc file
( e.g ~/.zshrc ~/.bashrc )
==============================================

export PATH="$HOME/.gitim:$PATH"
EOM

