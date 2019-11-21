export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="lemon"

HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
DEFAULT_USER=$USER

# To install zsh-autosuggestions:
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

plugins=(z git node npm github zsh-syntax-highlighting zsh-autosuggestions git-open)

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
export GOPATH=$HOME
export PATH=$GOPATH/bin:$PATH:./node_modules/.bin

### dev

[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh

## Aliases

alias c="code-insiders"
alias sk="./node_modules/.bin/sewing-kit"
alias ll="exa --group-directories-first -Bhl"
