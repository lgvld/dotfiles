HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt appendhistory


autoload -Uz compinit && compinit


setopt autocd


autoload -U promptinit; promptinit
prompt spaceship


setopt HIST_IGNORE_SPACE



if [ -z "$SSH_AUTH_SOCK" ] ; then
  eval `ssh-agent -s`
  ssh-add
fi


export VISUAL=vim



# check: https://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html

alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../../'

alias cp='cp --reflink=auto'


alias g=git
alias ga='git add'
alias gc='git commit'
alias gcl='git clone'
alias gp='git push'
alias gst='git status'

alias grep='grep --color=auto'


alias h='history'


alias j='jobs -l'

alias jn='jupyter notebook --NotebookApp.iopub_data_rate_limit=1.0e10'

alias jpgo=jpegoptim


alias l='ls --color=auto'
alias l.='ls -d .* --color=auto'
alias ll='ls -la'
alias ls='ls --color=auto'


alias m='mkdir -pv'
alias mkdir='mkdir -pv'


alias opng=optipng

alias optimg='jpegoptim *.jpg ; jpegoptim *.JPG ; optipng *.png ; optipng *.PNG'


alias p=pacman
alias sp='sudo pacman'

alias py=python


alias v=vim
alias vi=vim
alias sv='sudo vim'


alias s='sudo '
alias sudo='sudo '


alias wget='wget -c'


alias y=yay

alias ydl=youtube-dl



function gcap() {
    git add .
    if [ -z "$1"]
    then
        git commit -a -m 'lazy commit'
    else
        git commit -a -m "$*"
    fi
    git push
}

function mrun() {
    # simple script to run matlab scripts
    if [ $# -eq 0 ]
      then
        echo "please pass matlab script"
    fi
    matlab -nodisplay -nosplash -nodesktop -r "run('$1');exit;" | tail -n +14
}



#gsettings set org.gnome.desktop.background picture-uri file:///home/louis/.louis/bg.jpg



source ~/.louis/mpw/mpw.sh
