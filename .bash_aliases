# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


if type lolcat > /dev/null 2>&1; then
  alias cat='lolcat'
fi

if [[ -x `which colordiff` ]]; then
  alias diff='colordiff'
else
  echo 'not found colordiff'
fi

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ~='cd ~'

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias c='clear'
alias cl='clear;ls'
alias cr='cp -R'

alias di='diff -u'
alias d='docker'
alias dc='docker-compose'

alias e='echo'

alias f='find'

alias g='git'
alias gi='git'
alias gip='curl globalip.me'
alias gr='grep'
alias grr='grep -r'
alias gv='grep -v'

alias h='history 500'

alias j='jobs'

alias k='kill -9'

alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
alias lt='ls -ltr'
alias lm='cpulimit -l 200 --'
alias lm300='cpulimit -l 300 --'
alias lm400='cpulimit -l 400 --'
alias lm500='cpulimit -l 500 --'

alias m='more'
alias md='mkdir'
alias mp='mkdir -p'

alias p='ps uxf'
alias pp='ps auxf'
alias pi='pipenv'

alias s='source'
alias sa='source activate'
alias sb='source $HOME/.bashrc'
alias sz='source $HOME/.zshrc'

alias t='tmux'
alias tn='tmux new -s'
alias tl='tmux ls'
alias ta='tmux a'
alias tt='tmux a -t'
alias to='touch'
alias tf='tail -fF'

alias du2='du -ah --max-depth=2'
alias v='view'
alias vid='vim -d'
alias vd='vim -d'
alias sp='vim -o'
alias vs='vim -O'

alias expand-gz='gunzip'
alias expand-Z='gunzip'
alias expand-bz2='bunzip2'
alias expand-targz='tar zxvf'
alias expand-tgz='tar zxvf'
alias expand-tarbz2='tar jxvf'
alias expand-tbz2='tar jxvf'

alias apt-remove-force='dpkg --force-all -r'
alias cpu-temp='cat /sys/class/thermal/thermal_zone0/temp'

gpp () {
  if [ `echo $1 | fgrep '.c'` ] ; then
    #gcc $1 -o ${1%.c}
    gcc $1 -o ${1/.c/.out}
  elif [ `echo $1 | fgrep '.cpp'` ] ; then
    #g++ -std=c++11 $1 -o ${1%.cpp}
    g++ -std=c++11 $1 -o ${1/.cpp/.out}
  else
    :
  fi
}




julia-init () {
julia -e '''
Pkg.add("PyCall")
Pkg.add("SymPy")
Pkg.add("PyPlot")
Pkg.add("Plots")
Pkg.add("ZZ")
'''
}


lsix() {
 montage -tile 7x1 -label %f -background black -fill white "$@" gif:- | convert - -colors 16 sixel:-; }

olos () {
  if [ "$3" = "" ]; then
    grep -rl $1 . | xargs sed -i "s/${1}/${2}/g"
  else
    grep -rl $1 $3 | xargs sed -i "s/${1}/${2}/g"
  fi
}

alias dn="deathnote"
alias mem='cat /proc/meminfo |egrep -e "Active:|Inactive:|MemFree:"'
alias git-help='echo https://qiita.com/muran001/items/f13742b51da3a22117ee'
alias pypi-help='echo "https://qiita.com/Kensuke-Mitsuzawa/items/7717f823df5a30c27077"'

alias pip-help='echo """
pip install git+https://github.com/user/repo.git@branch
"""'
