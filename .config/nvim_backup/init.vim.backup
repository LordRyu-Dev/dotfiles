"<Leader>にSpaceキー割り当て
let mapleader = "\<Space>"

" シンタックスハイライトを有効にする
syntax enable

" ファイルタイププラグイン
filetype plugin indent on

" カーソルラインの表示・トグル
set cursorline
set cursorline!

" 行番号・相対的な行番号
set number
set relativenumber

" 検索結果をハイライトする
set hlsearch

" 検索時大文字小文字を区別しない
set ignorecase

" 検索時、大文字を入力した場合大文字小文字を区別する
set smartcase

" 文字を入力するたびに、その時点でパターンマッチしたテキストをハイライト
set incsearch

"書き込み可能に変更
set modifiable
set write

" Undo履歴保存
if has('persistent_undo')
    let undo_path = expand('~/.vim/undo')
    " ディレクトリが存在しない場合は作成
    if !isdirectory(undo_path)
        call mkdir(undo_path, 'p')
    endif
    let &undodir = undo_path
    set undofile
endif

" 展開するスペースの個数
set tabstop=4

" タブをスペースに展開
set expandtab

" インデントを考慮して改行
set smartindent

" インデントのスペースの数
set shiftwidth=4

" タブページ
set showtabline=2

"バックスペースの機能
set backspace=indent,eol,start

" ステータスライン
set laststatus=2

" 矩形選択
set virtualedit=block

" コマンドライン補完
set wildmenu

" スワップファイルを作らない
set noswapfile

" クリップボードの利用
set clipboard=unnamedplus

" .vimrcを開く
nnoremap <Space>. :<C-u>tabedit $MYVIMRC<CR>

" コピペの繰り返し
vnoremap <silent> <C-p> "Op<CR>

" Vimのバッファやレジスタ内などで使用する文字コードを設定
set encoding=utf-8

" スクリプトで使われている文字コードを宣言
" Vimがスクリプトを処理するとき、scriptencodingで指定した文字コードから
" encodingで指定した文字コードに変換される
scriptencoding utf-8

" 既存のファイルを開くとき、Vimが使用する文字コードを判定する順番
" 先頭から順に試される
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis

" 24bitカラーの有効化i
if (has("termguicolors"))
    set termguicolors
endif

" Jetpack Install
packadd vim-jetpack
call jetpack#begin()
" Plugins list
Jetpack 'tani/vim-jetpack'
Jetpack 'iamcco/markdown-preview.nvim'
Jetpack 'lambdalisue/fern.vim'
Jetpack 'yuki-yano/fern-preview.vim'
Jetpack 'lambdalisue/fern-git-status.vim'
Jetpack 'lambdalisue/nerdfont.vim'
Jetpack 'lambdalisue/fern-renderer-nerdfont.vim'
Jetpack 'lambdalisue/glyph-palette.vim'
Jetpack 'lambdalisue/fern-bookmark.vim'
Jetpack 'mattn/vim-maketable'
Jetpack 'prabirshrestha/vim-lsp'
Jetpack 'prabirshrestha/async.vim'
Jetpack 'prabirshrestha/asyncomplete.vim'
Jetpack 'prabirshrestha/asyncomplete-lsp.vim'
Jetpack 'hrsh7th/vim-vsnip'
Jetpack 'simeji/winresizer'
Jetpack 'itchyny/lightline.vim'
Jetpack 'tpope/vim-fugitive'
Jetpack 'mattn/emmet-vim'
Jetpack 'skanehira/translate.vim'
Jetpack 'skanehira/docker.vim'
Jetpack 'neoclide/coc.nvim',{'branch': 'release'}
Jetpack 'tpope/vim-surround'
Jetpack 'airblade/vim-gitgutter'
Jetpack 'tpope/vim-commentary'
Jetpack 'jiangmiao/auto-pairs'

call jetpack#end()

" Jetpack end

"" coc.nvim
""" <Tab>で候補をナビゲート
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
""" <Tab>で次、<S+Tab>で前
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"カラースキームを有効化
"colorscheme shades_of_purple

" Fernの隠しファイル表示
let g:fern#default_hidden=1

" Fernの起動キー
nnoremap <silent> <Leader>e :<C-u>Fern . -drawer -width=30 -toggle<CR>

" 公式リポジトリを参考にfern-previewのキーマップを追加
function! s:fern_settings() abort
  nmap <silent> <buffer> p     <Plug>(fern-action-preview:toggle)
  nmap <silent> <buffer> <C-p> <Plug>(fern-action-preview:auto:toggle)
  nmap <silent> <buffer> <C-d> <Plug>(fern-action-preview:scroll:down:half)
  nmap <silent> <buffer> <C-u> <Plug>(fern-action-preview:scroll:up:half)
endfunction

augroup fern-settings
  autocmd!
  autocmd FileType fern call s:fern_settings()
augroup END

" nerdfontの有効化
let g:fern#renderer = "nerdfont"

" gryph-palleteの有効化
augroup my-glyph-palette
    autocmd! *
    autocmd FileType fern call glyph_palette#apply()
augroup end

" ターミナルの起動キー
nnoremap <silent> <Leader>j :<C-u>bo terminal ++close<CR>

" ウィンドウ操作キーの変更
:set termwinkey=<C-g>

" ステータスライン
  let g:lightline = {
	\ 'colorscheme': 'wombat',
	\ 'active': {
	\   'left': [ [ 'mode', 'paste' ],
	\             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
	\ },
	\ 'component_function': {
	\   'cocstatus': 'coc#status'
	\ },
	\ }

" Use autocmd to force lightline update.
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()
