#!/bin/bash

build() {
  pandoc -t revealjs -s slides.md -o index.html
}

build
while true; do
  inotifywait -e modify *.md
  build
done
