#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DOTFILES="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

echo "creating symlinks"
linkables=$( find -H "$DOTFILES" -not -path "$DOTFILES/.git/*" -maxdepth 3 -name '*.symlink' )
for file in $linkables ; do
  target="$HOME/.$( basename $file ".symlink" )"
  [ -e $target ] && cp -r $target "$target.bak" && rm -rf $target
  echo "creating symlink for $file"
  ln -s $file $target
done
