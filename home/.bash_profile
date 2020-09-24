source ~/.bashrc
export PATH=/usr/local/bin:$PATH

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

# rbenv
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"

#add GOPATH
GOPATH=$HOME/go
PATH=$PATH:$HOME/go/bin

export GOPATH
export PATH

# composer
export PATH="$PATH:$HOME/.composer/vendor/bin/"

# android sdk

#export JAVA_HOME="/usr/libexec/java_home"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_162.jdk/Contents/Home
export PATH=“${JAVA_HOME}/bin:${PATH}”

# react-native (https://facebook.github.io/react-native/docs/getting-started.html)
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# added by Anaconda3 5.2.0 installer
# export PATH="/Users/izuru/anaconda3/bin:$PATH"

# flutter
export PATH=/Users/izuru/flutter/bin:$PATH

# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/Users/izuru/google-cloud-sdk/path.bash.inc' ]; then source '/Users/izuru/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
#if [ -f '/Users/izuru/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/izuru/google-cloud-sdk/completion.bash.inc'; fi
