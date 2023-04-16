print('init.lua')

--<Leader>にSpaceキーを割り当て
vim.g.mapleader = ' '

--日本語文字化け防止
vim.opt.encoding='utf-8'
vim.opt.fileencodings='utf-8'
vim.opt.fileformats='unix','dos','mac'

-- カーソルラインの表示・トグル
vim.opt.cursorline = true

-- 行番号
vim.opt.number = true

-- 検索結果をハイライトする
vim.opt.hlsearch = true

-- 検索時大文字小文字を区別しない
vim.opt.ignorecase = true

-- 検索時、大文字を入力した場合大文字小文字を区別する
vim.opt.smartcase = true

--書き込み可能に変更
vim.opt.modifiable = true
vim.opt.write = true

-- 展開するスペースの個数
vim.opt.tabstop = 4

-- タブをスペースに展開
vim.opt.expandtab = true

-- インデントを考慮して改行
vim.opt.smartindent = true

-- インデントのスペースの数
vim.opt.shiftwidth = 4

-- タブページ
vim.opt.showtabline = 2

-- ステータスライン
vim.opt.laststatus = 2

-- 矩形選択
vim.opt.virtualedit = 'block'

-- コマンドライン補完
vim.opt.wildmenu = true

-- スワップファイルを作らない
vim.o.noswapfile = true

-- クリップボードの利用
vim.opt.clipboard:append{'unnamedplus'}

-- undoファイルを作る
vim.opt.undofile = true

-- 既存のファイルを開くとき、Vimが使用する文字コードを判定する順番
-- 先頭から順に試される
vim.opt.fileencodings='utf-8','iso-2022-jp','euc-jp','sjis'

--コマンドライン補完
vim.opt.wildmenu = true

-- 24bitカラーの有効化
if vim.fn.has('termguicolors') == 1 then
   vim.opt.termguicolors = true
end

--エンコードをutf-8に
vim.scriptencoding='utf-8'
vim.termencoding='utf-8'

-- init.luaを開く
vim.api.nvim_set_keymap('n', '<Leader>.','<cmd>tabedit $MYVIMRC<cr>', {noremap = true, silent = true})

-- Jetpackをインストール
local fn = vim.fn
local jetpackfile = fn.stdpath('data') .. '/site/pack/jetpack/opt/vim-jetpack/plugin/jetpack.vim'
local jetpackurl = 'https://raw.githubusercontent.com/tani/vim-jetpack/master/plugin/jetpack.vim'
if fn.filereadable(jetpackfile) == 0 then
  fn.system('curl -fsSLo ' .. jetpackfile .. ' --create-dirs ' .. jetpackurl)
end

-- プラグイン管理
local jetpackFunc = vim.api.nvim_exec(
[[
    packadd vim-jetpack
    call jetpack#begin()
    
    call jetpack#add('tani/vim-jetpack')                         
    call jetpack#add('iamcco/markdown-preview.nvim')
    call jetpack#add('lambdalisue/fern.vim')
    call jetpack#add('yuki-yano/fern-preview.vim')               
    call jetpack#add('lambdalisue/fern-git-status.vim')          
    call jetpack#add('lambdalisue/nerdfont.vim')                 
    call jetpack#add('lambdalisue/fern-renderer-nerdfont.vim')   
    call jetpack#add('lambdalisue/glyph-palette.vim')            
    call jetpack#add('lambdalisue/fern-bookmark.vim')            
    call jetpack#add('mattn/vim-maketable')                      
    call jetpack#add('prabirshrestha/vim-lsp')                   
    call jetpack#add('prabirshrestha/async.vim')                 
    call jetpack#add('prabirshrestha/asyncomplete.vim')          
    call jetpack#add('prabirshrestha/asyncomplete-lsp.vim')      
    call jetpack#add('hrsh7th/vim-vsnip')                        
    call jetpack#add('simeji/winresizer')                        
    call jetpack#add('itchyny/lightline.vim')                    
    call jetpack#add('tpope/vim-fugitive')                       
    call jetpack#add('mattn/emmet-vim')                          
    call jetpack#add('skanehira/translate.vim')                  
    call jetpack#add('skanehira/docker.vim')                     
    call jetpack#add('neoclide/coc.nvim',{'branch': 'release'})  
    call jetpack#add('tpope/vim-surround')                       
    call jetpack#add('airblade/vim-gitgutter')                   
    call jetpack#add('tpope/vim-commentary')                     
    call jetpack#add('jiangmiao/auto-pairs')
    
    call jetpack#end()
]],
true)

print(jetpackFunc)
