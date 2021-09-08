#!/usr/bin/env bash

# tput_colors - Demonstrate color combinations.

for fg_color in {0..7}; do
  set_foreground=$(tput setaf $fg_color)
  for bg_color in {0..7}; do
    set_background=$(tput setab $bg_color)
    echo -n $set_background$set_foreground
    printf ' F:%s B:%s ' $fg_color $bg_color
  done
  echo $(tput sgr0)
done

for i in {0..255} ; do
  printf "\x1b[48;5;%sm%3d\e[0m " "$i" "$i"
  if (( i == 15 )) || (( i > 15 )) && (( (i-15) % 6 == 0 )); then
    printf "\n";
  fi
done
