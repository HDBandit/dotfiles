#!/usr/bin/env bash

###############
# ZSH config  #
###############
ln -s -i ~/.dotfiles/zsh/.zshrc .zshrc
# Theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
# Suggestion
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
# Reverse search
git clone https://github.com/junegunn/fzf.git ${ZSH}/custom/plugins/fzf
git clone https://github.com/Treri/fzf-zsh.git ${ZSH}/custom/plugins/fzf-zsh
