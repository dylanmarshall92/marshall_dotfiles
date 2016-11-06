# .bashrc
#. ~/.bash_prompt
LS_COLORS=$LS_COLORS:'di=0;35:' ; export LS_COLORS
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
function cs () {
  cd "$@" && ls
}
