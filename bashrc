# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
export SYSTEMD_PAGER=

# Better Autocompletion
bind 'TAB:menu-complete'
bind 'set show-all-if-ambiguous on'

# Alias
alias ls='ls --color=auto'
alias l='ls --color=auto'
alias lv='ls --color=auto -v'
alias ll='ls --color=auto -l'
alias la='ls --color=auto -la'
alias vim='vim -p'    # Open list of files in tabs
alias ssh='ssh -X'    # X11 Forwarding

# gpmetis is a graph partitioning tool used for MPAS. 
# I got tired of looking up the arguments
alias gpmetis='gpmetis -minconn -contig -niter=200'

# Additions to Path
export ~/$USER
export PATH=$USER/mpas/convert_mpas:${PATH}
export PATH=$USER/MPAS-Limited-Area:${PATH}
export PATH=$USER/.local/bin:${PATH}
export PATH=$USER/metis-5.1.0/build/Linux-x86_64/programs:${PATH}
export PATH=$USER/wps/bin:${PATH}
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
    source ~/.bashr
}

export MANPATH=/usr/share/man
source /etc/profile.d/*.sh
