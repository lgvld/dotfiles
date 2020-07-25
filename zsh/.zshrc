# check: https://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html

alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../../'


alias g=git
alias ga='git add'
alias gc='git commit'
alias gcl='git clone'
alias gp='git push'
alias gst='git status'

alias grep='grep --color=auto'


alias h='history'


alias j='jobs -l'

alias jpgo=jpegoptim


alias l='ls --color=auto'
alias l.='ls -d .* --color=auto'
alias ll='ls -la'
alias ls='ls --color=auto'


alias m='mkdir -pv'
alias mkdir='mkdir -pv'


alias opng=optipng


alias p=pacman
alias sp='sudo pacman'

alias py=python


alias v=vim
alias vi=vim
alias sv='sudo vim'


alias s=sudo


alias wget='wget -c'


alias y=yay



function gcap() {
    git add .
    git commit -a -m "lazy commit (louis)"
    git push
}
