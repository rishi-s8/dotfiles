# Plugins {{{
# ==============================================================================

    # Load the Antibody plugin manager for zsh.
    source <(antibody init)

    # Setup required env var for oh-my-zsh plugins
    export ZSH="$(antibody home)/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh"

    antibody bundle robbyrussell/oh-my-zsh
    antibody bundle robbyrussell/oh-my-zsh path:plugins/adb
    antibody bundle robbyrussell/oh-my-zsh path:plugins/bower
    antibody bundle robbyrussell/oh-my-zsh path:plugins/composer
    antibody bundle robbyrussell/oh-my-zsh path:plugins/cp
    antibody bundle robbyrussell/oh-my-zsh path:plugins/dnf
    antibody bundle robbyrussell/oh-my-zsh path:plugins/docker
    antibody bundle robbyrussell/oh-my-zsh path:plugins/docker-compose
    antibody bundle robbyrussell/oh-my-zsh path:plugins/git
    antibody bundle robbyrussell/oh-my-zsh path:plugins/git-flow
    antibody bundle robbyrussell/oh-my-zsh path:plugins/gpg-agent
    antibody bundle robbyrussell/oh-my-zsh path:plugins/gulp
    antibody bundle robbyrussell/oh-my-zsh path:plugins/httpie
    antibody bundle robbyrussell/oh-my-zsh path:plugins/jsontools
    antibody bundle robbyrussell/oh-my-zsh path:plugins/jump
    antibody bundle robbyrussell/oh-my-zsh path:plugins/nmap
    antibody bundle robbyrussell/oh-my-zsh path:plugins/npm
    antibody bundle robbyrussell/oh-my-zsh path:plugins/pass
    antibody bundle robbyrussell/oh-my-zsh path:plugins/rsync
    antibody bundle robbyrussell/oh-my-zsh path:plugins/ssh-agent
    antibody bundle robbyrussell/oh-my-zsh path:plugins/tmux
    antibody bundle robbyrussell/oh-my-zsh path:plugins/tmuxinator
    antibody bundle robbyrussell/oh-my-zsh path:plugins/z
    antibody bundle romkatv/powerlevel10k

    # Other bundles
    antibody bundle sampson-chen/sack
    #antibody bundle jessarcher/zsh-artisan
    antibody bundle /home/jess/.oh-my-zsh/custom/plugins/artisan
    antibody bundle zsh-users/zsh-autosuggestions

    # This needs to be the last bundle.
    antibody bundle zsh-users/zsh-syntax-highlighting

    # Load the theme.
    # antibody bundle robbyrussell/oh-my-zsh path:themes/robbyrussell.zsh-theme
    antibody bundle dracula/zsh

# }}}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
