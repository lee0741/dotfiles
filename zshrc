#Zsh
fpath=( "$HOME/.zfunctions" $fpath )

#Antigen
source $HOME/Code/antigen/antigen.zsh
antigen use oh-my-zsh

antigen bundles <<EOBUNDLES
  brew-cask
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
