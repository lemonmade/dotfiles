export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
DEFAULT_USER=$USER

plugins=(z git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

autoload -U promptinit; promptinit
unsetopt correct_all

# User

## Environment

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='code-insiders'
fi

export SSH_KEY_PATH="~/.ssh/rsa_id"
export PATH=$PATH:./node_modules/.bin

### nvm

export NVM_DIR="~/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

### dev

[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh

## Aliases

alias c="code-insiders"
alias sk="./node_modules/.bin/sewing-kit"
