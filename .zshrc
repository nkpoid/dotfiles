if [ ! -d ~/.zplug ]; then
  git clone https://github.com/b4b4r07/zplug ~/.zplug
fi

source ~/.zplug/zplug
source ~/dotfiles/sh/ls

# 補完をIgnoreCaseにする
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

zplug "simnalamburt/shellder"

zplug "zsh-users/zsh-syntax-highlighting", nice: 10
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-autosuggestions"

zplug "mollifier/anyframe"

zplug "b4b4r07/enhancd", of:enhancd.sh

zplug "zsh-users/zsh-completions"

zplug "mrowa44/emojify", as:command

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load --verbose
