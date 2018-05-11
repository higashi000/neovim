"dein.vim---{{{
set runtimepath^=~/.deinvim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.deinvim/dein')
  call dein#begin('~/.deinvim/dein')
  call dein#load_toml('~/.config/nvim/toml/dein.toml',{'lazy' : 0})
  call dein#load_toml('~/.config/nvim/toml/colorscheme.toml',{'lazy' : 0})
  call dein#load_toml('~/.config/nvim/toml/dein_lazy.toml',{'lazy' : 1})
  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif
"---}}}

"nvim_settings-----{{{
"シンタックスを有効
syntax on
"行番号を表示
set number
"タイトルを表示
set title
"インデント幅
set shiftwidth=2
"ファイル内にあるタブ文字の表示幅
set tabstop=2
"インデント幅
set expandtab
"いい感じにインデントを挿入
set cindent
"行頭の余白内でTabを打ち込むと'shiftwidth'の数だけインデントする
set smarttab
"コード折り畳み機能有効化
set foldmethod=marker
"バックアップファイルを生成しない
set nobackup
"対応するカッコを協調表示
set showmatch
"右端にカーソルの位置を表示
set ruler
"エラー時に音を鳴らさない
set noerrorbells
"swapファイルを生成しない
set noswapfile
"保存されていないファイルがあるときでも別のファイルを開くことが出来る
set hidden
"入力中のコマンドを表示
set showcmd
"カーソルのある行を強調表示
set cursorline
"カーソルのある列を強調表示
set cursorcolumn
"クリップボードにコピー
set clipboard+=unnamedplus
"背景の透過
highlight Normal ctermbg=none
"End nvim_settings-----}}}

let g:deoplete#enable_at_startup = 1
