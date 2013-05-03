# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
setopt auto_cd

ZSH_THEME="robbyrussell"

autoload -U colors && colors
setopt correct
export SPROMPT="Correct $fg[red]%R$reset_color to $fg[green]%r?$reset_color (Yes, No, Abort, Edit) "
export TERM='xterm-256color'

# Example aliases
alias zshconfig="gvim ~/.zshrc"
alias ohmyzsh="gvim ~/.oh-my-zsh"
alias tmuxconfig="gvim ~/.tmux.conf"
alias ipy="ipython"
alias cls="clear"
alias py="python"
alias gl="glances"
alias gn="cowsay 'Good Knight, hacker' && sleep 3 && sudo shutdown -h now"
alias cya="cowsay 'Cya in a while' && sleep 3 && sudo pm-suspend"

plugins=(git rails3 bundler prakhar github)

source $ZSH/oh-my-zsh.sh

export PATH=/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/Code/julia:/Code/get_shit_done:

# For RVM:
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

#for t:
alias t='python ~/Code/stevelosh-t/t.py --task-dir ~/tasks --list tasks'

#for fasd
eval "$(fasd --init auto)"
eval "$(fasd --init posix-alias zsh-hook)"
alias v='f -e vim'
alias m='f -e mplayer'
alias o='a -e xdg-open'

# for sublime
alias nano="subl"

# for django
alias django="python manage.py"

# virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Code
source /usr/local/bin/virtualenvwrapper.sh

# n for nautilus
alias n='nautilus'
