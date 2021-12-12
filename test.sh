#!/usr/bin/env bash

# Based on https://github.com/jichu4n/basic_wm/blob/master/build_and_run.sh

make

xinit ./dwm --    \
  `which Xephyr`  \
  :100            \
  -ac             \
  -screen 800x600 \
  -host-cursor
