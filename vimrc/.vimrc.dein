let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

call dein#begin(s:dein_dir)

let s:toml      = '~/dotfiles/vimrc/toml/dein.toml'
let s:lazy_toml = '~/dotfiles/vimrc/toml/dein_lazy.toml'
let s:syntax_toml = '~/dotfiles/vimrc/toml/dein_syntax.toml'

" TOML を読み込み、キャッシュしておく
if dein#load_cache([expand('<sfile>'), s:toml, s:lazy_toml])
  call dein#load_toml(s:toml, {'lazy': 0})
  call dein#load_toml(s:syntax_toml, {'lazy': 1})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})
  " call dein#save_cache()
endif

call dein#end()

" vimprocだけは最初にインストールしてほしい
if dein#check_install(['vimproc'])
  call dein#install(['vimproc'])
endif
" もし、未インストールものものがあったらインストール
if dein#check_install()
  call dein#install()
endif
