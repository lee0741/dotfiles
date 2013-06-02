# Launching tmux by default.
#if [ "$TMUX" = "" ]; then
  #tmux attach -t "$USER" || tmux new -s "$USER"
#fi

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Theme
ZSH_THEME="doubleend"

export EDITOR=vim

# Aliases
if [ -e "$HOME/.aliases" ]; then
  source "$HOME/.aliases"
fi

# Functions
if [ -e "$HOME/.functions" ]; then
  source "$HOME/.functions"
fi

# z
. ~/code/z/z.sh

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

# Customize to your needs...
export PATH=/Library/Frameworks/Python.framework/Versions/Current/bin:/usr/local/share/python:/Users/lee0741/.rvm/gems/ruby-1.9.3-p0/bin:/Users/lee0741/.rvm/gems/ruby-1.9.3-p0@global/bin:/Users/lee0741/.rvm/rubies/ruby-1.9.3-p0/bin:/Users/lee0741/.rvm/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/local/git/bin:/Users/lee0741/code/js/phantomjs/bin:/usr/local/sbin:~/projects/dotfiles/bin:/opt/local/bin:/opt/local/sbin:/usr/texbin:/usr/bin/psql

# Solarized ls
if brew list | grep coreutils > /dev/null ; then
  PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
  alias ls='ls -F --show-control-chars --color=auto'
  eval `gdircolors -b $HOME/.dir_colors`
fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
