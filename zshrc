# Prompt set up
autoload -U compinit promptinit
compinit
promptinit
prompt suse

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=2000
SAVEHIST=2000
unsetopt beep # Turn off visualbell 
bindkey -v

# Auto Completion
autoload -Uz compinit
compinit -i
zstyle ':completion:*' menu select
setopt completealiases

# More extensive tab completion
setopt completeinword

# Key bindings
# Incremental search
bindkey -M vicmd "/" history-incremental-search-backward
bindkey -M vicmd "?" history-incremental-search-forward

# Search based on whats already typed
bindkey -M vicmd "//" history-beginning-search-backward
bindkey -M vicmd "??" history-beginning-search-forward

# Alias
alias ls='ls --color=auto'
alias l='ls --color=auto'
alias lv='ls --color=auto -v'
alias ll='ls --color=auto -l'
alias la='ls --color=auto -la'
alias vim='vim -p'    # Open list of files in tabs
alias ssh='ssh -X'    # X11 Forwarding



# Additions to Path
export PATH=/home/$USER/MPAS-Limited-Area:${PATH}
export PATH=/home/$USER/.local/bin:${PATH}
export PATH=/home/$USER/wps/bin:${PATH}
export PATH=/home/$USER/bin:${PATH}
export PATH=/home/$USER/mpas-libs/bin:${PATH}
export PATH=/home/$USER/convert_mpas:${PATH}
export PATH=$PATH:/usr/local/go/bin
 

# Additions to Path

#############################################
### Functions

# Extract most compressed files
extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)  tar xvjf $1     ;;
            *.tar.gz)   tar xvzf $1     ;;
            *.bz2)      bunzip2 $1      ;;
            *.rar)      unrar x $1      ;;
            *.gz)       gunzip $1       ;;
            *.tar)      tar xvf $1      ;;
            *.tbz2)     tar xvjf $1     ;;
            *.tgz)      tar xvf $1       ;;
            *.zip)      unzip $1        ;;
            *.Z)        uncompress $1   ;;
            *.7z)       7z x $1         ;;
            *)          echo "'$1' cannot be extracted via >extract<";;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

# reload function
reload() {
    source ~/.zshrc
}

# MiDrive Sync
misync() {
    rsync -avz ~/MiDrive miles@server:~/
    rsync -avz miles@server:~/MiDrive ~/
}
