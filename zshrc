# zmodload zsh/zprof

# zplug
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
zplug "modules/completion", from:prezto
zplug "modules/directory", from:prezto
zplug "modules/history", from:prezto
zplug "modules/utility", from:prezto

export NVM_LAZY_LOAD=true
export NVM_AUTO_USE=true
zplug "lukechilds/zsh-nvm"

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# golang
export PATH=$PATH:/usr/local/opt/go/libexec/bin:$(go env GOPATH)/bin

# z
. /usr/local/etc/profile.d/z.sh

# zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# colorls
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
alias ls='ls -F --show-control-chars --color=auto'
eval `gdircolors -b $HOME/.dir_colors`

# misc
source $HOME/.aliases
unalias rm # no interactive rm by default
export LANG=en_US.UTF-8

# zprof
