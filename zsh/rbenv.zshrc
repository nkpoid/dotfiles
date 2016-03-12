if [ -d ${HOME}/.rbenv ]; then
  export PATH=$HOME/.rbenv/bin:$PATH
  eval "$(rbenv init -)"
  . ~/.rbenv/completions/rbenv.zsh
fi
