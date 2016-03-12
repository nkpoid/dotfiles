# 補完をIgnoreCaseにする
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# コマンドのスペルミスを指摘
setopt correct

# ディレクトリ名でcd
setopt auto_cd

# ディレクトリ名の補完で末尾の / を自動的に付加
setopt auto_param_slash

# カッコの対応などを自動的に補完
setopt auto_param_keys

# コマンドラインの引数で --prefix=/usr などの = 以降でも補完できる
setopt magic_equal_subst

zstyle ':completion:*' verbose yes
zstyle ':completion:*' completer _expand _complete _match _prefix _approximate _list _history
zstyle ':completion:*:messages' format $YELLOW'%d'$DEFAULT
zstyle ':completion:*:warnings' format $RED'No matches for:'$YELLOW' %d'$DEFAULT
zstyle ':completion:*:descriptions' format $YELLOW'completing %B%d%b'$DEFAULT
zstyle ':completion:*:corrections' format $YELLOW'%B%d '$RED'(errors: %e)%b'$DEFAULT
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' use-cache true
zstyle ':completion:*' list-separator '-->'

# オブジェクトファイル,中間ファイル等は補完しない
zstyle ':completion:*:*files' ignored-patterns '*?.o' '*?~' '*\#'
