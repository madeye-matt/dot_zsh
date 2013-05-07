# alias.zsh
# Last Change: 15-Mar-2013.
# Maintainer:  id774 <idnanashi@gmail.com>

set_alias() {
    alias pd='popd'
    alias gd='dirs -v; echo -n "select number: ";
    read newdir; cd +"$newdir" '
    alias sudo='sudo '
    alias -g L='| less'
    alias -g H='| head'
    alias -g T='| tail'
    alias -g G='| grep'
    alias -g S='| sed'
    alias -g A='| awk'
    alias -g W='| wc'
    alias g='git'
    alias v='vim'
    alias vv='vim .'
    alias e='emacs -nw'
    alias em='emacs -nw'
    alias l='ls -ltra'
    alias ll='ls -lZtra'
    alias d='ls -ltr'
    alias dl='ls -lZtr'
    alias dir='ls -ltr'
    alias la='ls -a'
    alias a='ls -a'
    alias f='file'
    alias j='cd'
    alias c='cd'
    alias cl='clear'
    alias cls='clear'
    alias k='clear'
    alias copy='cp'
    alias move='mv'
    alias ren='mv'
    alias del='rm'
    alias md='mkdir'
    alias s='screen -U'
    alias scd='screen -U -D'
    alias scrr='screen -U -D -RR'
    alias mv='mv -vi'
    alias rm='rm -i'
    alias crontab='crontab -i'
    alias svnc='svn commit -m'
    alias svns='svn status'
    alias svnl='svn log'
    alias svna='svn add'
    alias svnd='svn delete'
    alias svnu='svn up'
    alias gitc='git commit -a -m'
    alias gits='git status'
    alias gitb='git branch'
    alias gitd='git diff'
    alias gitl='git log'
    alias gita='git add'
    alias gitu='git pull'
    alias gitp='git push'
    alias be='bundle exec'
    alias emacs-compile='emacs --batch -Q -f batch-byte-compile'
}

set_alias
