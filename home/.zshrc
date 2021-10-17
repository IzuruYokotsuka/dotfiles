eval "$(anyenv init -)"

typeset -U path PATH
path=(
	/opt/homebrew/bin(N-/)
	/usr/local/bin(N-/)
	$path
)

if [[ "${(L)$( uname -s )}" == darwin ]] && (( $+commands[arch] )); then
	alias brew="arch -arch x86_64 /usr/local/bin/brew"
	alias x64='exec arch -arch x86_64 "$SHELL"'
	alias a64='exec arch -arch arm64e "$SHELL"'
	switch-arch() {
		if  [[ "$(uname -m)" == arm64 ]]; then
			arch=x86_64
		elif [[ "$(uname -m)" == x86_64 ]]; then
			arch=arm64e
		fi
		exec arch -arch $arch "$SHELL"
	}
fi

setopt magic_equal_subst

# bash PS1
# export PS1="\u@\h:\[\e[0;32m\]\w\[\e[0m\]\n$ "
# zsh PS1
PROMPT="[$(uname -m)]%n@%m:%F{cyan}%~%f@ "
RPROMPT=""

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

