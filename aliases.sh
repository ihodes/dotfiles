alias l="ls -G"
alias ll="ls -alG"
alias ls="ls -G"

alias ed="emacs --daemon"
alias e="emacsclient -t"
# alias emacs="emacsclient -t"
# alias emacs-x="emacsclient"

alias gs="git status"
alias gl="git log"
alias glo="git log --oneline"
alias ga="git add"
alias gcm="git commit -m"

alias serve="python2 -m SimpleHTTPServer"
alias pyg="pygmentize -f terminal256 -g -P style=monokai"

alias reload="source ~/.bash_profile"

# Because OS X is buggy, sometimes when you mount a disk with copies of
# applications on it (such as a backup disk), when you hit the Open With menu in
# Finder, many copies of the same applications are suggested. This is
# annoying. Hence the following line.
alias remove_duplicates="/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -domain local -domain system -domain user"

function take {
    mkdir $1
    cd $1
}

# This is because OSX is insanely buggy and disconnecting audio outputs
# unexpectedly can result in the sound completley failing.
function nuke-sound {
    sudo kextunload /System/Library/Extensions/AppleHDA.kext
    sudo kextload /System/Library/Extensions/AppleHDA.kext
    #ps aux | grep 'coreaudio[a-z]' | awk '{print $2}' | xargs sudo kill
}

function did {
    echo `date +%s`: $1 >> ~/.done
}

function proj {
    cd $(find ~/workspace -maxdepth 1 -type d | percol)
}

function pless {
    pygmentize -f terminal256 -g -P style=monokai $* | less -FiXRM
}
