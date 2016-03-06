# 補完をIgnoreCaseにする
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# コマンドのスペルミスを指摘
setopt correct

# ディレクトリ名でcd
setopt auto_cd
