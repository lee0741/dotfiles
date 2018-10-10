# zmodload zsh/zprof

# zplug
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:"pure.zsh", from:github, as:theme

zplug "modules/completion", from:prezto
zplug "modules/directory", from:prezto
zplug "modules/history", from:prezto
zplug "modules/utility", from:prezto

zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "rupa/z", use:"z.sh"
zplug "~/.dotfiles", use:"*.zsh", from:local

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

# colorls
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
alias ls='ls -F --show-control-chars --color=auto'
eval `gdircolors -b $HOME/.dir_colors`

# misc
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
unalias rm # no interactive rm by default

# zprof