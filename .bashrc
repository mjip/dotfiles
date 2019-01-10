LS_COLORS=$LS_COLORS:'di=0;35:' ; export LS_COLORS
PS1="\[\033[1;34m\][\u\[\033[1;34m\]:\[\033[1;34m\]\w]\[\033[1;32m\]\$\[\033[0m\] "

# Alias definitions
alias ls="ls --color=auto"
alias lsla="ls -l -a"
alias cd..="cd .."
alias ff="firefox > /dev/null 2>&1 &"
alias mu="cd ~/Music"
alias tree="find . -print | sort | sed 's;[^/]*/;|---;g;s;---|; |;g'"
alias open="xdg-open"

# Function definitions
function cd { 
	builtin cd "$@" && ls; 
}

function manvim() {
  /usr/bin/man $* | \
    col -b | \
    vim -R -c 'set ft=man nomod nolist' -
}

function remove_spaces {
	for f in *\ *; do mv "$f" "${f// /_}"; done
}
