#!/usr/bin/zsh

chsh -s /usr/bin/zsh
git clone --recursive git@github.com:LeoReentry/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
cd ~/.zprezto
git remote add upstream https://github.com/sorin-ionescu/prezto.git
git pull upstream master
git checkout leo
git merge master

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
