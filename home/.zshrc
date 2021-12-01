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

# PS1
# bash PS1
# export PS1="\u@\h:\[\e[0;32m\]\w\[\e[0m\]\n$ "
# zsh PS1
PROMPT="[$(uname -m)]%n@%m:%F{cyan}%~%f@ "
RPROMPT=""

# ---------- c -------------
# brew install gcc

# arm64
# ln -s /opt/homebrew/bin/g++-11 /opt/homebrew/bin/g++
# ↓
# $ which g++
# /opt/homebrew/bin/g++
# OK

# x86_64
# ln -s /usr/local/bin/g++-11 /usr/local/bin/g++
# ↓
# $ which g++
# /usr/local/bin/g++
# OK

# ---------- alias ----------
# neovim/vim
alias vim='nvim'

# source
alias sz="source ~/.zshrc"
# ls
alias ls='ls -FGh'
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'
# git
alias gst='git st'
# vim
alias vi='vim'
alias vf='vim +VimFiler'
alias vn='vim +NERDTreeToggle'
alias vz='vim ~/.zshrc'
# atcoder
alias at='atcoder-tools'
alias atg='(){at gen $1 --workspace ~/workspace/contest/atcoder/atcoder-tools}'
alias att='at test'

# java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-8.jdk/Contents/Home
export PATH="${JAVA_HOME}/bin:${PATH}"

# android sdk
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# ---------- peco ----------
export HISTCONTROL=ignoredups
export HISTIGNORE="history*:exit:ls:ll:cd:cd ~:vi:gst"
export HISTSIZE=10000

# ---------- hook ----------
chpwd() {
  if [[ $(pwd) != $HOME ]]; then;
    ls
  fi
}

# ---------- setopt ----------

# cd無しでもディレクトリ移動
setopt auto_cd
# 同時に起動しているzshの間でhistoryを共有
setopt share_history
