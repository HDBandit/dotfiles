export DOTFILES_PATH=$HOME/.dotfiles


# Register all exports
for exportToSource in $DOTFILES_PATH/zsh/exports/*; do source $exportToSource; done

ZSH_THEME="powerlevel9k/powerlevel9k"

plugins=(git docker history zsh-autosuggestions fzf-zsh z)

source $ZSH/oh-my-zsh.sh

# Register all aliases
for aliasToSource in $DOTFILES_PATH/zsh/aliases/*; do source $aliasToSource; done

# Opciones del tema
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)
OWERLEVEL9K_HOME_ICON=$'\UE12C '
