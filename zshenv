############
# function #
############
function chpwd () {
    if [[ "$platform" == 'mac' ]]; then
        ls -G
    else
        ls
    fi
}
function ipy () {
    if [[ "$platform" == 'mac' ]]; then
        MPLBACKEND="module://itermplot" ITERMPLOT=rv ipython "$@"
    else
        ipython "$@"
    fi
}
function suipy () {
    sudo sh -c "ipython $@"
}
function today () {
	date +%Y%m%d
}
function current() {
    date +%Y%m%d_%H%M%S
}
function temp() {
    vim -c "set filetype=${1:-python}"
}
function snip() {
    vim "$snip/${1:-`ls -t $snip | head -n1`}"
}
function sg() {
    ls -lSr "${1:-.}" | awk '{print $8,$9,$5}' | uniq -c -f2 | head -n "${2:-10}"
}

###########
# exports #
###########
export memo="$HOME/Documents/md"
export me="$HOME/Documents/github/me"
export snip="$me/bio/files"
export company="$HOME/github/company"
export post="$HOME/Documents/github/me/flask_blog/pages/posts"

# DEFAULT --defaults-group-suffix ~/.my.cnf
# export MYSQL_GROUP_SUFFIX="_name"
#
# DEFAULT --profile ~/.aws/config
# export AWS_PROFILE="name"

#########
# alias #
#########
alias vi=vim
alias py=python
alias vmore='vim -u ~/.vimrc.more -'
alias gt='google_trans --clipboard'
alias pstop="ps -e -o pcpu,cpu,nice,state,cputime,args | sort -rk1 | head"

