# Prompt set up
autoload -U compinit promptinit
compinit
promptinit
prompt suse

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=300000
unsetopt beep
bindkey -v

# Auto Completion
zstyle :compinstall filename '/home/miles/.zshrc'
autoload -Uz compinit
compinit -i
zstyle ':completion:*' menu select
setopt completealiases
setopt completeinword

# Alias
alias ls='ls --color=auto'
alias l='ls --color=auto'
alias lv='ls --color=auto -v'
alias ll='ls --color=auto -l'
alias la='ls --color=auto -la'
alias vim='vim -p'    # Open list of files in tabs
alias ssh='ssh -X'    # X11 Forwarding

export PATH=$USER/.local/bin:${PATH}
export PATH=$USER/bin:${PATH}

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
