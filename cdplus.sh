# -*- mode: shell-script; -*-

# cd command with logging directory
function cdplus() {
    local log_file=$HOME/.cdplus.log
    # save current directory to log
    echo `pwd` >> $log_file
    \cd $1
}

# move to directory from log
function cdr() {
    cd $(cat $HOME/.cdplus.log | percol)
}

alias cd=cdplus
