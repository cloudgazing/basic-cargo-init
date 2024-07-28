#!/bin/zsh

default_dirname="my-project"

read "dirname?Enter directory name [${default_dirname}]: "
dirname=${dirname:-$default_dirname}

default_packagename="$dirname"

read "packagename?Enter new package name [${default_packagename}]: "
packagename=${packagename:-$default_packagename}

git clone https://github.com/cloudgazing/basic-cargo-init.git "$dirname" &&
cd "$dirname" &&
rm -rf .git README.md osx_init.sh && git init &&
sed -i '' "s/^name = \".*\"/name = \"$packagename\"/" Cargo.toml
