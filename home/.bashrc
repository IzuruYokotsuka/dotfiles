export PS1="\u@\h:\[\e[0;32m\]\w\[\e[0m\]\n$ "

alias ls='ls -FGh'
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'
alias gst='git st'
alias vi='vim'
alias vf='vim +VimFiler'
alias vn='vim +NERDTreeToggle'

# ---------- peco ----------
export HISTCONTROL=ignoredups
export HISTIGNORE="history*:exit:ls:ll:cd:cd ~:vi:gst"
export HISTSIZE=10000

