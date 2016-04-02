if [ ! -d ~/.zplug ]; then
  git clone https://github.com/b4b4r07/zplug ~/.zplug
fi

autoload -U compinit
compinit

source ~/.zplug/zplug
for file in ~/dotfiles/zsh/*.zsh; do
  source $file
done

zplug "simnalamburt/shellder"

zplug "zsh-users/zsh-syntax-highlighting", nice: 10

zplug "mollifier/anyframe"

zplug "plugins/brew", from:oh-my-zsh
zplug "plugins/gem", from:oh-my-zsh
zplug "plugins/rails", from:oh-my-zsh, as:command
zplug "sorin-ionescu/prezto", of:"modules/ruby"

zplug "mollifier/cd-gitroot"
alias cdu='cd-gitroot'

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load --verbose
