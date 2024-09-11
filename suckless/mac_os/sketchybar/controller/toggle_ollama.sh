#!/usr/bin/env sh

OLLAMA_PROCESS=$(pgrep ollama)

BLUE=0xff73DACA
GREY=0xff7F7F7F

if [[ $OLLAMA_PROCESS != "" ]]; then
    pkill -9 ollama Ollama
   sketchybar --set ollama icon.color=$GREY label="Ollama/Off"
else
  open -a Ollama
   sketchybar --set ollama icon.color=$BLUE label="Ollama/On"
fi