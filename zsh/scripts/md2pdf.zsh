#!/usr/bin/env zsh

emulate -L zsh
setopt err_exit no_unset pipe_fail

local font="Hiragino Mincho ProN"

if (( $# == 0 )); then
  print -u2 "usage: ${0:t} file.md [file2.md ...]"
  exit 1
fi

local cmd
for cmd in pandoc typst; do
  if (( ! $+commands[$cmd] )); then
    print -u2 "error: $cmd が見つかりません (brew install $cmd)"
    exit 1
  fi
done

local input output
for input in "$@"; do
  if [[ ! -f $input ]]; then
    print -u2 "skip: $input が存在しません"
    continue
  fi
  output="${input:r}.pdf"
  pandoc "$input" -o "$output" \
    --pdf-engine=typst \
    -V mainfont="$font"
  print "done: $output"
done
