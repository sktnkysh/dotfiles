export HOMEBREW_CELLAR="$HOME/.linuxbrew/Cellar"
export MANPATH="$HOME/.linuxbrew/share/man${MANPATH+:$MANPATH}:"
export HOMEBREW_REPOSITORY="$HOME/.linuxbrew/Homebrew"
export HOMEBREW_PREFIX="$HOME/.linuxbrew"
export INFOPATH="$HOME/.linuxbrew/share/info:${INFOPATH:-}"

export PATH="$PATH:$HOMEBREW_PREFIX/bin"
export PATH="$PATH:$HOMEBREW_PREFIX/sbin"
export PATH="$PATH:$HOME/.nodebrew/current/bin:$PATH"
export PATH="$PATH:$(yarn global bin):$PATH"

alias ,="cd"
alias ,_="cd $_"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../../"
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias cr="cp -r"
alias g="git"
alias h="history"
alias l="exa -F"
alias la="exa -A"
alias ll="exa -alF --git"
alias lll="exa -alF --git -s=mod --time-style=long-iso"
alias f="fd"
alias gr="rg"
alias o="open"
alias oo="open ."
alias rm="rip"
alias p="bat"
alias py="poetry"
alias procon="cargo compete"
alias rust="evcxr"
alias sz="source $HOME/.zshrc"
alias t="tmux"
alias top="top"
alias vi="vim"

