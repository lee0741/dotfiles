#Antigen
ZSHA_BASE=$HOME/Code/dotfiles/zsh
source ~/Code/antigen/antigen.zsh
antigen use oh-my-zsh

antigen bundles <<EOBUNDLES
  brew-cask
  colored-man
  git
  history-substring-search
  robbyrussell/oh-my-zsh lib
  sindresorhus/pure
  z
EOBUNDLES

antigen-apply

#Misc
export PATH=/usr/local/bin:$HOME/Code/dotfiles/binct:$PATH
source "$HOME/.aliases"
export LANG=en_US.UTF-8

#Dircolors
PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
eval `gdircolors -b $HOME/.dir_colors`
