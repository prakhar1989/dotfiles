# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
setopt auto_cd

# looks
ZSH_THEME="robbyrussell"
autoload -U colors && colors
setopt correct
export SPROMPT="Correct $fg[red]%R$reset_color to $fg[green]%r?$reset_color (Yes, No, Abort, Edit) "
export TERM='xterm-256color'

# aliases
alias zshconfig="gvim ~/.zshrc"
alias ohmyzsh="gvim ~/.oh-my-zsh"
alias tmuxconfig="gvim ~/.tmux.conf"
alias dotfiles="cd ~/.dotfiles"
alias cls="clear"
alias gn="cowsay 'Cya later, hacker' && sleep 3 && sudo shutdown -h now"
alias cya="cowsay 'Cya in a while' && sleep 3 && sudo pm-suspend"
alias n='nautilus'
alias refresh="source ~/.zshrc"

# plugins
# more aliases in the prakhar plugin
plugins=(git prakhar django extract)

source $ZSH/oh-my-zsh.sh

# PATH
export PATH=/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/Code/julia:/Code/get_shit_done:

#for fasd
eval "$(fasd --init auto)"
eval "$(fasd --init posix-alias zsh-hook)"
alias v='f -e vim'
alias m='f -e mplayer'
alias o='a -e xdg-open'

# for sublime
alias nano="subl"

# python
alias ipy="ipython"
alias py="python"
# python - django
alias django="python manage.py"

# virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Code
source /usr/local/bin/virtualenvwrapper.sh

# for rvm
source /home/prakhar/.rvm/scripts/rvm
# use the latest ruby on load
rvm use

# for git
alias gitcls="git rm -r --cached ."
