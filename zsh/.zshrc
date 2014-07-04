# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="pure"

# setting classpaths for java
export EDITOR='vim'

# settings for golang
export GOROOT=/usr/local/go
export GOPATH=$HOME/Code/go

# autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias be="bundle exec"
alias start_server="python -m SimpleHTTPServer"
alias almulla="python ~/Code/scripts/almulla.py && open /tmp/almulla.png"
alias py="python"
alias swift="xcrun swift"
alias ipy="ipython"
alias c="clear"
alias g='grep -i'  # Case insensitive grep
alias f='find . -iname'
alias ducks='du -cksh * | sort -rn|head -11' # Lists folders and files sizes in the current folder
alias top='top -o cpu'
alias systail='tail -f /var/log/system.log'
alias m='more'
alias df='df -h'
alias untar="tar xzfv"
alias o="open"
alias gpu="git push -u origin master"
alias getip="curl ipinfo.io"
alias django="python manage.py"
alias hist='history | grep'

# aliases for connecting to the servers
alias r="~/Code/scripts/rackspace.sh"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin

# Editing path for Android
export PATH=$PATH:/Users/asrinivasan/Code/Android/sdk/tools
export PATH=$PATH:/Users/asrinivasan/Code/Android/sdk/platform-tools
export PATH=$PATH:/Users/asrinivasan/Code/Android/apache-ant-1.9.2/bin

#Editing path for Go
export PATH=$PATH:$GOPATH/bin

#Editing path for GAE
export PATH=$PATH:$GOPATH/gae

# set VI mode
bindkey -v

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
