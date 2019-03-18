# USER .zshrc file for use with MODULES
#
# 2019-03-15 - mcurry
####
#
#if ( ! ($LMOD_FULL_SETTARG_SUPPORT) ) then
#    export LMOD_FULL_SETTARG_SUPPORT="no"
#fi

# Source the lmod init for zsh and tell lmod where the modules are
source /usr/local/lmod/lmod/init/zsh
export MODULEPATH_ROOT=/usr/local/lmod/lmod/modulefiles
export MODULEPATH=/usr/local/lmod/lmod/modulefiles/compilers:/usr/local/lmod/lmod/modulefiles/idep:/usr/local/lmod/lmod/modulefiles/cdep/gnu

# Source the $USER .usermodrc file, if it exists
#if [[ -a ~/.usermodrc ]] then
#    source ~/.usermodrc
#fi

#############################################
### User Specific Functions, alias etc below


# Alias
alias ls='ls -G'
alias l='ls -G'
alias lv='ls -Gv'
alias ll='ls -lG'
alias la='ls -laG'
alias vim='vim -p'    # Open list of files in tabs
alias ssh='ssh -X'    # X11 Forwarding

# Prompt set up
autoload -U compinit promptinit
compinit
promptinit
prompt suse

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/devotice/.zshrc'

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

# Additions to Path
export PATH=/Users/mcurry/Projects/mpas/convert_mpas:${PATH}

# Functions

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
