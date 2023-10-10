# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/david/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="candy"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

eval "$(fasd --init auto)"
export GPG_TTY=$(tty)

# Aliases
alias vim=nvim
alias gpu='git push -u origin $(git symbolic-ref --short HEAD)'
alias rev_copy='git rev-parse --short=7 HEAD | tr -d "\n" | pbcopy'
alias rgf='rg --files | rg'
alias k='kubectl'


# Brew
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib/
export PATH="/Users/david/bin:/usr/local/sbin:$PATH"

# Go
#export GOPATH=$HOME/go
#export GOBIN=$GOPATH/bin
#export GOROOT=/usr/local/opt/go/libexec
#export PATH=$PATH:$GOPATH/bin
#export PATH=$PATH:$GOROOT/bin

export PATH=$HOME/.bin:$PATH

# libxml
export PATH="/usr/local/opt/libxml2/bin:$PATH"
export PATH="/usr/local/opt/libxml2/bin:$PATH"

export LDFLAGS="-L/usr/local/opt/libxml2/lib"
export CPPFLAGS="-I/usr/local/opt/libxml2/include"

# Python
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# pyenv
export WORKON_HOME=$HOME/virtualenvs
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
export PYENV_ROOT="$HOME/.pyenv"
if which pyenv > /dev/null; then 
        eval "$(pyenv init --path)"
        eval "$(pyenv init -)"
fi
if which pyenv-virtualenv-init > /dev/null; then 
        eval "$(pyenv virtualenv-init -)"; 
fi

export PIP_RESPECT_VIRTUALENV=true
export PIP_REQUIRE_VIRTUALENV=true
syspip() {
   PIP_REQUIRE_VIRTUALENV="" pip "$@"
}
 
export PYCURL_SSL_LIBRARY=openssl

# asdf
source /opt/homebrew/opt/asdf/libexec/asdf.sh

# Privacy
export FUNCTIONS_CORE_TOOLS_TELEMETRY_OPTOUT=1
export SLS_TELEMETRY_DISABLED=1
export APOLLO_TELEMETRY_DISABLED=1
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

alias awslocal="AWS_ACCESS_KEY_ID=test AWS_SECRET_ACCESS_KEY=test AWS_DEFAULT_REGION=eu-central-1 aws --endpoint-url=http://${LOCALSTACK_HOST:-localhost}:4566"

# 1P workaround temporary until general release
export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock

glog-pretty-from(){
  command="git log --pretty=\"%ad %C(Yellow)%h%C(reset) | %s %C(Cyan)@%an\" --date=short $1...HEAD "
  if [ -n "$2" ]; then
    command+="-- components/$2"
  fi

  # Execute the command
  eval "$command"
}

export PATH="/Users/david/.dotnet:$PATH"

