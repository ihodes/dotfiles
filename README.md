# Simple Dotiles

Modularized to suit my compulsions.

To install, simply add the below to your `.bash_profile` or `.bashrc`, and you should be good to go.

    ## Sources all consituent bash configuration files.

    DOTFILE_DIR=~/.dotfiles

    # All aliases & custom functions live here.
    if [ -f ${DOTFILE_DIR}/aliases.sh ]; then
    . ${DOTFILE_DIR}/aliases.sh
    fi

    # bash-specific configuration is here, e.g. shopt and PS1 etc.
    if [ -f ${DOTFILE_DIR}/config.sh ]; then
    . ${DOTFILE_DIR}/config.sh
    fi

    # Sensitive environment variables and the like can be kept here.
    if [ -f ${DOTFILE_DIR}/secrets.sh ]; then
    . ${DOTFILE_DIR}/secrets.sh
    fi

    # Dev/work etc specific extras can be here.
    if [ -f ${DOTFILE_DIR}/dev.sh ]; then
    . ${DOTFILE_DIR}/dev.sh
    fi

    # Load autocomplete from homebrew-installed applications
    if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
    fi


Edit liberally.
