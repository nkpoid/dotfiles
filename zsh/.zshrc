if [ ! -d ~/.zplug ]; then
  git clone https://github.com/b4b4r07/zplug ~/.zplug
fi

autoload -U compinit
compinit

source ~/.zplug/zplug
for file in ~/dotfiles/zsh/*; do
  source $file
done

zplug "simnalamburt/shellder"

zplug "zsh-users/zsh-syntax-highlighting", nice: 10
zplug "zsh-users/zsh-completions"

zplug "mollifier/anyframe"

zplug "mollifier/cd-gitroot"
alias cdu='cd-gitroot'

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load --verbose
