# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias lt="ls -lt" 
alias la="ls -la"
alias mv="mv -i"        # -i prompts before overwrite
alias cp="cp -i"        # -i prompts before overwrite
alias mkdir='mkdir -p'  # -p make parent dirs as needed
alias df='df -h'        # -h prints human readable format
alias ifc='ssh -p 6112 msandoval@132.248.16.17' # Connect to ifc
alias sql='sqlite3'

# Change the color of shell prompt
#export PS1="\e[1;32m[\u@\h \W]\$ \e[m"
export PS1="\[\033[1;32m\]\u:\[\033[1;34m\]\W\[\033[0;37m\]\$ \[\033[0m\]"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/mauricio/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/mauricio/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/mauricio/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/mauricio/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

