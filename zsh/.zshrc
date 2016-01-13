# Path to your oh-my-zsh installation.
export ZSH=/Users/prakhar/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="pure"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)


# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export MANPATH="/usr/local/man:$MANPATH"

# for latex
export INFOPATH=/usr/local/texlive/2015/texmf-dist/doc/info
export MANPATH="/usr/local/texlive/2015/texmf-dist/doc/man:$MANPATH"
export PATH="/usr/local/texlive/2015/bin/x86_64-darwin:$PATH"

# for go
export GOPATH=$HOME/Code/go-workspace
export PATH="/usr/local/go/bin:$PATH:$GOPATH/bin"

# for scala
export SCALA_HOME="/usr/local/share/scala-2.11.7"
export PATH="$PATH:$SCALA_HOME/bin"

# for android
export ANDROID_HOME=/usr/local/opt/android-sdk

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias start_server="python -m SimpleHTTPServer"
alias ipy="ipython"
alias c="clear"
alias g='grep -i'  # Case insensitive grep
alias f='find . -iname'
alias ducks='du -cksh * | sort -rn|head -11' # Lists folders and files sizes in the current folder
alias top='top -o cpu'
alias systail='tail -f /var/log/system.log'
alias untar="tar xzfv"
alias o="open"
alias getip="curl ipinfo.io"
alias django="python manage.py"
alias r="cat ~/.ssh/config"
alias venv="source venv/bin/activate"
alias h="history | grep"
alias pc="pbcopy"
alias pv="pbpaste"

# write to output to tmpfile because of progress bar 
transfer() { 
  tmpfile=$( mktemp -t transferXXX ); 
  curl --progress-bar --upload-file $1 https://transfer.sh/$(basename $1) >> $tmpfile; 
  cat $tmpfile; rm -f $tmpfile; 
} 
alias transfer=transfer

youtube() {
  youtube-dl $1 && say "Download complete"
}
alias youtube=youtube

function clip { [ -t 0 ] && pbpaste || pbcopy; }

# for autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# OPAM configuration
. /Users/prakhar/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# aws autocompletion
source /usr/local/bin/aws_zsh_completer.sh

# for iterm shell integration
test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh
