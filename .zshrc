# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git gem git-flow brew ruby rails)

source $ZSH/oh-my-zsh.sh

# Alias definitions
alias sails='nocrrect sails'
alias bower='noglob bower'
alias rb="ruby"
alias pyserv="python -m SimpleHTTPServer"
alias jreload="jekyll serve --watch"
alias rake="nocorrect noglob rake"
alias flushdns="dscacheutil -flushcache"
alias octopush="git push origin source && rake generate && rake deploy"
alias octoprev="rake generate && rake preview"
alias maintenance="brew update && brew upgrade && upgrade_oh_my_zsh"
alias launchredis="redis-server /usr/local/etc/redis.conf"
alias fixairplay="sudo kill `ps -ax | grep 'coreaudiod' | grep 'sbin' |awk '{print $1}'`"
alias ngrok="ngrok -hostname=dev.tme.coffee"
alias hyperion="echo "" | ssh pi@192.168.178.70 '~/toggle.sh' >/dev/null 2>&1"
alias adbtext="adb shell input text "

# Customize to your needs...
export PATH=/usr/local/bin
PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin
# Android Studio
PATH=$PATH:~/Library/android-sdk-macosx/tools
PATH=$PATH:~/Library/android-sdk-macosx/platform-tools
# Pebble
PATH=$PATH:~/.pebble-dev/PebbleSDK-current/bin

## Android Home variable
export ANDROID_HOME=~/Library/android-sdk-macosx/


tabs -2

## rbenv for Ruby
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"
