# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific aliases and functions
case "$-" in
*i*)
    source ~/.plu-bashrc
    source ~/.zendev.env

    ;; # break;

esac 

