# gauche.zsh
# Last Change: 16-May-2012.
# Maintainer:  id774 <idnanashi@gmail.com>

set_gauche_path() {
    while [ $# -gt 0 ]
    do
        if [ -d $1 ]; then
            export PATH=$1/bin:$PATH
        fi
        shift
    done
}

set_gauche_path \
  /opt/gauche/0.9.3.2