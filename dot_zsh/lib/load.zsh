# load.zsh
# Last Change: 11-Feb-2012.
# Maintainer:  id774 <idnanashi@gmail.com>

call_screen() {
    if [ -f $HOME/.zsh/lib/screen.zsh ]; then
        source $HOME/.zsh/lib/screen.zsh
    elif [ -f /usr/local/etc/zsh/lib/screen.zsh ]; then
        source /usr/local/etc/zsh/lib/screen.zsh
    elif [ -f /etc/zsh/lib/screen.zsh ]; then
        source /etc/zsh/lib/screen.zsh
    fi
}

load_plugins() {
    if [ -d $HOME/.zsh/plugins ]; then
        for ZSH_PLUGIN in $HOME/.zsh/plugins/*.zsh
        do
            source $ZSH_PLUGIN
        done
        unset ZSH_PLUGIN
    elif [ -d /usr/local/etc/zsh/plugins ]; then
        for ZSH_PLUGIN in /usr/local/etc/zsh/plugins/*.zsh
        do
            source $ZSH_PLUGIN
        done
        unset ZSH_PLUGIN
    elif [ -d /etc/zsh/plugins ]; then
        for ZSH_PLUGIN in /etc/zsh/plugins/*.zsh
        do
            source $ZSH_PLUGIN
        done
        unset ZSH_PLUGIN
    fi
}

load_local_settings() {
    if [ -f $HOME/.zshrc_local ]; then
        source $HOME/.zshrc_local
    fi
}

load_base() {
    if [ -f $HOME/.zsh/lib/base.zsh ]; then
        source $HOME/.zsh/lib/base.zsh
    elif [ -f /usr/local/etc/zsh/lib/base.zsh ]; then
        source /usr/local/etc/zsh/lib/base.zsh
    elif [ -f /etc/zsh/lib/base.zsh ]; then
        source /etc/zsh/lib/base.zsh
    fi
}

load_main() {
    load_base
    load_local_settings
    load_plugins
    test -d $HOME/bin && export PATH=$HOME/bin:$PATH
    call_screen
}

load_main
