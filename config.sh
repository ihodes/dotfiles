export PS1="\w > "
export PATH="~/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/heroku/bin:/usr/local/opt/ruby/bin:$PATH"
export EDITOR="emacs -nw"

# Typing name of dir (including ., ..) will cd to it.
shopt -s autocd

# Beef that history up.
export HISTFILESIZE=10000000
export HISTSIZE=10000000
export HISTCONTROL=ignorespace
export HISTTIMEFORMAT='%F %T '
export PROMPT_COMMAND='history -a' # immediately write to history--don't wait for exit
shopt -s cmdhist # store commands on one line, even if entered on two+
shopt -s histappend # append instead of overwrite bash history
shopt -s histverify # don't run ! expansions without asking
