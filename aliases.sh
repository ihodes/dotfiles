alias l="ls -G"
alias ll="ls -alG"
alias ls="ls -G"

alias e="emacs -nw"
alias emacs="emacs -nw"
alias emacs-x="emacs"

alias gs="git status"
alias gl="git log"
alias ga="git add"
alias gcm="git commit -m"

# Because OS X is buggy, sometimes when you mount a disk with copies of
# applications on it (such as a backup disk), when you hit the Open With menu in
# Finder, many copies of the same applications are suggested. This is
# annoying. Hence the following line.
alias remove_duplicates="/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -domain local -domain system -domain user"

function take {
    mkdir $1
    cd $1
}