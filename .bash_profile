# for command history
HISTCONTROL=ignoreboth:erasedups
HISTSIZE=300000
HISTFILESIZE=9000000
HISTTIMEFORMAT=`echo -e "\033[1;34m%F \033[1;31m%T \033[0m"`

export PROMPT_COMMAND='history -a; history -n;history 1 >> ${HOME}/.bash_eternal_history'

# virtualenvwrapper config
export WORKON_HOME="$HOME/.virtualenvs"
source /usr/local/bin/virtualenvwrapper.sh
complete -o default -o nospace -F _virtualenvs v

export DJANGO_CONFIGURATION=Dev
export PYTHONPATH="."

# Set color bash prompt according to active virtualenv, git branch,
# mercurial branch and return status of last command.
# https://gist.github.com/2484714
source ~/.bash_prompt
