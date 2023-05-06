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

--行を折り返す
vim.opt.wrap = true
vim.opt.display = "lastline"

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

-- 補完メニューの高さ
vim.opt.pumheight=10

-- 括弧のカーソル処理
vim.opt.showmatch = true
vim.opt.matchtime = 1

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

-- マッピングYを行末までのヤンクにする
vim.api.nvim_set_keymap('n', 'Y', 'y$', {noremap = true})

-- init.luaを開く
vim.api.nvim_set_keymap('n', '<Leader>.','<cmd>tabedit $MYVIMRC<cr>', {noremap = true})

-- lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    'folke/lazy.nvim',
    'h-hg/fcitx.nvim',
    'tpope/vim-repeat',
    'nvim-lua/popup.nvim',
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
    'nvim-tree/nvim-web-devicons',
    'rcarriga/nvim-notify',
    'EdenEast/nightfox.nvim',
    'hrsh7th/nvim-cmp',
    'onsails/lspkind.nvim',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-nvim-lsp-signature-help',
    'hrsh7th/cmp-nvim-lsp-document-symbol',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-omni',
    'hrsh7th/cmp-nvim-lua',
    'hrsh7th/cmp-emoji',
    'hrsh7th/cmp-calc',
	'lukas-reineke/cmp-under-comparator',
    'f3fora/cmp-spell',
    'yutkat/cmp-mocword',
    'uga-rosa/cmp-dictionary',
    'saadparwaiz1/cmp_luasnip',
    'ray-x/cmp-treesitter',
    'hrsh7th/cmp-cmdline',
    'neovim/nvim-lspconfig',
    'williamboman/nvim-lsp-installer',
    'tamago324/nlsp-settings.nvim',
    'weilbith/nvim-lsp-smag',
    'nvimdev/lspsaga.nvim',
    'folke/lsp-colors.nvim',
	'ray-x/lsp_signature.nvim',
    'EthanJWright/toolwindow.nvim',
    'j-hui/fidget.nvim',
    'nvim-telescope/telescope.nvim',
    'nvim-telescope/telescope-frecency.nvim',
    'nvim-telescope/telescope-symbols.nvim',
    'nvim-telescope/telescope-github.nvim',
    'nvim-telescope/telescope-fzf-writer.nvim',
    'nvim-telescope/telescope-smart-history.nvim',
    'nvim-telescope/telescope-media-files.nvim',
    'LinArcX/telescope-command-palette.nvim',
    'nvim-treesitter/nvim-treesitter',
    'yioneko/nvim-yati',
    'nvim-treesitter/nvim-treesitter-context',
    'JoosepAlviste/nvim-ts-context-commentstring',
    'haringsrob/nvim_context_vt',
    'nvim-treesitter/nvim-treesitter-refactor',
    'nvim-treesitter/nvim-tree-docs',
    'vigoux/architext.nvim',
    'm-demare/hlargs.nvim',
    'nvim-treesitter/nvim-treesitter-textobjects',
    'RRethy/nvim-treesitter-textsubjects',
    'mfussenegger/nvim-treehopper',
    'David-Kunz/treesitter-unit',
    'mizlan/iswap.nvim',
    'nvim-lualine/lualine.nvim',
    'SmiteshP/nvim-gps',
    'akinsho/bufferline.nvim',
    'RRethy/vim-illuminate',
    'norcalli/nvim-colorizer.lua',
    't9md/vim-quickhl',
    'Pocco81/high-str.nvim',
    'folke/todo-comments.nvim',
    'mvllow/modes.nvim',
    'sidebar-nvim/sidebar.nvim',
    'sunjon/stylish.nvim',
    'goolord/alpha-nvim',
    'petertriho/nvim-scrollbar',
    'edluffy/specs.nvim',
    'phaazon/hop.nvim',
    'unblevable/quick-scope',
    'ggandor/lightspeed.nvim',
    'haya14busa/vim-edgemotion',
    'machakann/vim-columnmove',
    'justinmk/vim-ipmotion',
    'bkad/CamelCaseMotion',
    'yutkat/wb-only-current-line.nvim',
    'osyo-manga/vim-milfeulle',
    'terryma/vim-expand-region',
    'terryma/vim-multiple-cursors',
    'kana/vim-niceblock',
    'thinca/vim-partedit',
    'yutkat/delete-word-to-chars.nvim',
    'gbprod/substitute.nvim',
    'machakann/vim-sandwich',
    'AckslD/nvim-revJ.lua',
    'deris/vim-rengbang',
    'monaqa/dial.nvim',
    'gbprod/yanky.nvim',
    'AckslD/nvim-neoclip.lua',
    'yutkat/auto-paste-mode.vim',
    'tversteeg/registers.nvim',
    'AckslD/nvim-anywise-reg.lua',
    'kevinhwang91/nvim-hlslens',
    'haya14busa/vim-asterisk',
    'lambdalisue/reword.vim',
    'haya14busa/vim-metarepeat',
    'nvim-pack/nvim-spectre',
    'nvim-neo-tree/neo-tree.nvim',
    'wsdjeg/vim-fetch',
    'famiu/bufdelete.nvim',
    'stevearc/stickybuf.nvim',
    'tkmpypy/chowcho.nvim',
    'kwkarlwang/bufresize.nvim',
    'simnalamburt/vim-mundo',
    'AndrewRadev/linediff.vim',
    'chentau/marks.nvim',
    'lambdalisue/readablefold.vim',
    'thinca/vim-ref',
    'folke/which-key.nvim',
    'kevinhwang91/nvim-bqf',
    'gabrielpoca/replacer.nvim',
    'rmagatti/auto-session',
    'rmagatti/session-lens',
    'zdcthomas/medit',
    'Pocco81/AbbrevMan.nvim',
    'tyru/capture.vim',
    'jghauser/mkdir.nvim',
    'sQVe/sort.nvim',
    'yutkat/confirm-quit.nvim',
    'yutkat/history-ignore.nvim',
    'akinsho/toggleterm.nvim',
    'aiya000/aho-bakaup.vim',
    'voldikss/vim-translator',
    'segeljakt/vim-silicon',
    'mrjones2014/legendary.nvim',
    'renerocksai/telekasten.nvim',
    'Shougo/vinarise.vim',
    'mattn/vim-sonictemplate',
    'zsugabubus/crazy8.nvim',
    'lfilho/cosco.vim',
    'lukas-reineke/indent-blankline.nvim',
    'kristijanhusak/line-notes.nvim',
    'numToStr/Comment.nvim',
    's1n7ax/nvim-comment-frame',
    'LudoPinelli/comment-box.nvim',
    'danymat/neogen',
    'andymass/vim-matchup',
    'windwp/nvim-autopairs',
    'windwp/nvim-ts-autotag',
    'rgroli/other.nvim',
    'klen/nvim-test',
    'michaelb/sniprun',
    'yutkat/taskrun.nvim',
    'jose-elias-alvarez/null-ls.nvim',
    'gpanders/editorconfig.nvim',
    'ntpeters/vim-better-whitespace',
    'stevearc/aerial.nvim',
    'L3MON4D3/LuaSnip',
    'kevinhwang91/nvim-hclipboard',
    'rafamadriz/friendly-snippets',
    'ahmedkhalf/project.nvim',
    'klen/nvim-config-local',
    'TimUntersberger/neogit',
    'sindrets/diffview.nvim',
    'akinsho/git-conflict.nvim',
    'lewis6991/gitsigns.nvim',
    'yutkat/convert-git-url.vim',
    'rhysd/committia.vim',
    'hotwatermorning/auto-git-diff',
    'pwntester/octo.nvim',
    'sentriz/vim-print-debug',
    'rcarriga/nvim-dap-ui',
    'theHamsta/nvim-dap-virtual-text',
    'nvim-telescope/telescope-dap.nvim',
    'hkupty/iron.nvim',
    'vuki656/package-info.nvim',
    'bennypowers/nvim-regexplainer',
    'iamcco/markdown-preview.nvim',
    'dhruvasagar/vim-table-mode',
    'jsborjesson/vim-uppercase-sql',
    'Decodetalkers/csv-tools.lua',
    'MTDL9/vim-log-highlighting',
    'bfredl/nvim-luadev',
    'wadackel/nvim-syntax-info',
	'williamboman/mason.nvim',
	'williamboman/mason-lspconfig.nvim',
	'akinsho/flutter-tools.nvim',
	'jose-elias-alvarez/null-ls.nvim',
	'MunifTanjim/prettier.nvim',
})

--hlslens設定

require('hlslens').setup()

local kopts = {noremap = true, silent = true}

vim.api.nvim_set_keymap('n', 'n',
    [[<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>]],
    kopts)
vim.api.nvim_set_keymap('n', 'N',
    [[<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>]],
    kopts)
vim.api.nvim_set_keymap('n', '*', [[*<Cmd>lua require('hlslens').start()<CR>]], kopts)
vim.api.nvim_set_keymap('n', '#', [[#<Cmd>lua require('hlslens').start()<CR>]], kopts)
vim.api.nvim_set_keymap('n', 'g*', [[g*<Cmd>lua require('hlslens').start()<CR>]], kopts)
vim.api.nvim_set_keymap('n', 'g#', [[g#<Cmd>lua require('hlslens').start()<CR>]], kopts)

vim.api.nvim_set_keymap('n', '<Leader>l', '<Cmd>noh<CR>', kopts)

--stickybuf設定
require("stickybuf").setup({
  -- This function is run on BufEnter to determine pinning should be activated
  get_auto_pin = function(bufnr)
    -- You can return "bufnr", "buftype", "filetype", or a custom function to set how the window will be pinned
    -- The function below encompasses the default logic. Inspect the source to see what it does.
    return require("stickybuf").should_auto_pin(bufnr)
  end
})

--カラースキーム
vim.cmd 'autocmd ColorScheme * highlight Normal ctermbg=none guibg=none'
vim.cmd 'autocmd ColorScheme * highlight NonText ctermbg=none guibg=none'
vim.cmd 'autocmd ColorScheme * highlight LineNr ctermbg=none guibg=none'
vim.cmd 'autocmd ColorScheme * highlight Folded ctermbg=none guibg=none'
vim.cmd 'autocmd ColorScheme * highlight EndOfBuffer ctermbg=none guibg=none'
vim.cmd 'colorscheme nightfox'

-- ダッシュボード・スタート画面プラグイン alpha-nvimの設定
local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

local function capture(cmd, raw)
	local f = assert(io.popen(cmd, "r"))
	local s = assert(f:read("*a"))
	f:close()
	if raw then
		return s
	end
	s = string.gsub(s, "^%s+", "")
	s = string.gsub(s, "%s+$", "")
	s = string.gsub(s, "[\n\r]+", " ")
	return s
end

local function split(source, sep)
	local result, i = {}, 1
	while true do
		local a, b = source:find(sep)
		if not a then
			break
		end
		local candidat = source:sub(1, a - 1)
		if candidat ~= "" then
			result[i] = candidat
		end
		i = i + 1
		source = source:sub(b + 1)
	end
	if source ~= "" then
		result[i] = source
	end
	return result
end

dashboard.section.header.val = vim.fn.readfile(vim.fn.expand("~/.config/nvim/dashboard_custom_header.txt"))
dashboard.section.footer.val = "Total plugins: " .. require("lazy").stats().count
dashboard.section.header.opts.hl = "Question"
-- dashboard.section.header.val = vim.fn.readfile(vim.fn.expand("~/.config/nvim/lua/rc/files/dashboard_custom_header.txt"))
dashboard.section.buttons.val = {
	dashboard.button("s", " Open last session", ":PossessionLoadCurrent<CR>"),
	dashboard.button("h", "  Recently opened files", ":Telescope my_mru<CR>"),
	dashboard.button("f", " Find file", ":Telescope find_files<CR>"),
	dashboard.button("e", " New file", ":enew<CR>"),
	dashboard.button("b", " Jump to bookmarks", ":Telescope marks<CR>"),
	dashboard.button("n", " Memo New", ":Telekasten new_note<CR>"),
	dashboard.button("t", " Memo Today", ":Telekasten goto_today<CR>"),
	dashboard.button("w", " Memo Week", ":Telekasten goto_thisweek<CR>"),
	dashboard.button("m", " Memo List", ":Telekasten find_notes<CR>"),
	dashboard.button("p", " Update plugins", ":Lazy sync<CR>"),
	dashboard.button("q", " Exit", ":qa<CR>"),
}
alpha.setup(dashboard.config)

vim.api.nvim_create_augroup("vimrc_alpha", { clear = true })
vim.api.nvim_create_autocmd({ "User" }, {
	group = "vimrc_alpha",
	pattern = "AlphaReady",
	callback = function()
		if vim.fn.executable("onefetch") == 1 then
			local header = split(
				capture(
					[[onefetch 2>/dev/null | sed 's/\x1B[@A-Z\\\]^_]\|\x1B\[[0-9:;<=>?]*[-!"#$%&'"'"'()*+,.\/]*[][\\@A-Z^_`a-z{|}~]//g']],
					true
				),
				"\n"
			)
			if next(header) ~= nil then
				require("alpha.themes.dashboard").section.header.val = header
				require("alpha").redraw()
			end
		end
	end,
	once = true,
})

-- 括弧自動閉じプラグイン nvim-autopairs有効化
require("nvim-autopairs").setup({ map_cr = true })

--コメントアウトプラグイン Comment有効化
require("Comment").setup({
	---Add a space b/w comment and the line
	---@type boolean
	padding = true,

	---Line which should be ignored while comment/uncomment
	---Example: Use '^$' to ignore empty lines
	---@type string Lua regex
	ignore = nil,

	---Whether to create basic (operator-pending) and extra mappings for NORMAL/VISUAL mode
	---@type table
	mappings = {
		---operator-pending mapping
		---Includes `gcc`, `gcb`, `gc[count]{motion}` and `gb[count]{motion}`
		basic = true,
		---extended mapping
		---Includes `g>`, `g<`, `g>[count]{motion}` and `g<[count]{motion}`
		extra = false,
	},

	---LHS of line and block comment toggle mapping in NORMAL/VISUAL mode
	---@type table
	toggler = {
		---line-comment toggle
		line = "gcc",
		---block-comment 
		block = "gbc",
	},

	---LHS of line and block comment operator-mode mapping in NORMAL/VISUAL mode
	---@type table
	opleader = {
		---line-comment opfunc mapping
		line = "gc",
		---block-comment opfunc mapping
		block = "gb",
	},

	---Pre-hook, called before commenting the line
	---@type function|nil
	pre_hook = function()
		return require("ts_context_commentstring.internal").calculate_commentstring()
	end,
	---Post-hook, called after commenting is done
	---@type function|nil
	post_hook = nil,
})

vim.api.nvim_set_keymap("n", "<C-/>", "<Cmd>lua require('Comment.api').toggle.linewise.current()<CR>", {noremap = true})
vim.api.nvim_set_keymap("i", "<C-/>", "<Esc>:<C-u><Cmd>lua require('Comment.api').toggle.linewise.current()<CR>\"_cc<CR>i", {noremap = true})
vim.api.nvim_set_keymap("v", "<C-/>", "gc", {noremap = true})

-- インデントを見やすくするプラグイン、indent-blanklineの導入

vim.opt.list=true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

require("indent_blankline").setup({
	space_char_blankline = " ",
	show_current_context = true,
	use_treesitter = true,
	show_current_context_start = true,
	buftype_exclude = { "terminal" },
	filetype_exclude = {
		"help",
		"dashboard",
		"dashpreview",
		"NvimTree",
		"neo-tree",
		"vista",
		"sagahover",
		"sagasignature",
		"packer",
		"lazy",
		"log",
		"lspsagafinder",
		"lspinfo",
		"dapui_scopes",
		"dapui_breakpoints",
		"dapui_stacks",
		"dapui_watches",
		"dap-repl",
		"toggleterm",
		"alpha",
		"coc-explorer",
	},
	-- char_highlight_list = {
	--   "IndentBlanklineIndent1", "IndentBlanklineIndent1", "IndentBlanklineIndent1",
	--   "IndentBlanklineIndent1", "IndentBlanklineIndent1", "IndentBlanklineIndent1",
	--   "IndentBlanklineChar", "IndentBlanklineChar", "IndentBlanklineChar", "IndentBlanklineChar",
	--   "IndentBlanklineChar", "IndentBlanklineChar", "IndentBlanklineChar", "IndentBlanklineChar",
	--   "IndentBlanklineChar", "IndentBlanklineChar", "IndentBlanklineChar", "IndentBlanklineChar",
	--   "IndentBlanklineChar", "IndentBlanklineChar", "IndentBlanklineChar", "IndentBlanklineChar",
	--   "IndentBlanklineChar", "IndentBlanklineChar", "IndentBlanklineChar", "IndentBlanklineChar",
	--   "IndentBlanklineChar", "IndentBlanklineChar", "IndentBlanklineChar", "IndentBlanklineChar",
	--   "IndentBlanklineChar", "IndentBlanklineChar", "IndentBlanklineChar", "IndentBlanklineChar",
	--   "IndentBlanklineChar", "IndentBlanklineChar", "IndentBlanklineChar", "IndentBlanklineChar",
	--   "IndentBlanklineChar", "IndentBlanklineChar"
	-- }
})

-- vim.api.nvim_clear_autocmds({ event = { "TextChanged", "TextChangedI" }, group = "IndentBlanklineAutogroup" })

-- 自動補完プラグイン nvim-cmpの設定
vim.g.completeopt = "menu,menuone,noselect"

local cmp = require("cmp")
local types = require("cmp.types")
local luasnip = require("luasnip")
local has_words_before = function()
	local unpack = unpack or table.unpack ---@diagnostic disable-line: deprecated
	local line, col = unpack(vim.api.nvim_win_get_cursor(0))
	return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local t = function(str)
	return vim.api.nvim_replace_termcodes(str, true, true, true)
end

cmp.setup({
	formatting = {
		-- fields = {'abbr', 'kind', 'menu'},
		format = require("lspkind").cmp_format({
			with_text = true,
			menu = {
				buffer = "[Buffer]",
				nvim_lsp = "[LSP]",
				cmp_tabnine = "[TabNine]",
				-- copilot = "[Copilot]",
				luasnip = "[LuaSnip]",
				nvim_lua = "[NeovimLua]",
				latex_symbols = "[LaTeX]",
				path = "[Path]",
				omni = "[Omni]",
				spell = "[Spell]",
				emoji = "[Emoji]",
				calc = "[Calc]",
				rg = "[Rg]",
				treesitter = "[TS]",
				dictionary = "[Dictionary]",
				mocword = "[mocword]",
				cmdline = "[Cmd]",
				cmdline_history = "[History]",
			},
		}),
	},
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body) -- For `luasnip` users.
		end,
	},
	sorting = {
		comparators = {
			cmp.config.compare.offset,
			cmp.config.compare.exact,
			cmp.config.compare.score,
			require("cmp-under-comparator").under,
			function(entry1, entry2)
				local kind1 = entry1:get_kind()
				kind1 = kind1 == types.lsp.CompletionItemKind.Text and 100 or kind1
				local kind2 = entry2:get_kind()
				kind2 = kind2 == types.lsp.CompletionItemKind.Text and 100 or kind2
				if kind1 ~= kind2 then
					if kind1 == types.lsp.CompletionItemKind.Snippet then
						return false
					end
					if kind2 == types.lsp.CompletionItemKind.Snippet then
						return true
					end
					local diff = kind1 - kind2
					if diff < 0 then
						return true
					elseif diff > 0 then
						return false
					end
				end
			end,
			cmp.config.compare.sort_text,
			cmp.config.compare.length,
			cmp.config.compare.order,
		},
	},

	mapping = {
		["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
		["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
		-- selene: allow(unused_variable)
		---@diagnostic disable-next-line: unused-local
		["<Up>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item({ behavior = cmp.SelectBehavior.Select })
			else
				vim.api.nvim_feedkeys(t("<Up>"), "n", true)
			end
		end, { "i" }),
		-- selene: allow(unused_variable)
		---@diagnostic disable-next-line: unused-local
		["<Down>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
			else
				vim.api.nvim_feedkeys(t("<Down>"), "n", true)
			end
		end, { "i" }),

		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
				-- elseif luasnip.expand_or_jumpable() then
				-- 	luasnip.expand_or_jump()
			elseif has_words_before() then
				cmp.complete()
			else
				fallback()
			end
		end, { "i", "s" }),

		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { "i", "s" }),

		["<C-Down>"] = cmp.mapping(function(fallback)
			if luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			else
				fallback()
			end
		end, { "i", "s" }),

		["<C-Up>"] = cmp.mapping(function(fallback)
			if luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { "i", "s" }),
		["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
		["<C-y>"] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
		["<C-q>"] = cmp.mapping({ i = cmp.mapping.abort(), c = cmp.mapping.close() }),
		["<CR>"] = cmp.mapping.confirm({ select = false }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
	},
	-- LuaFormatter off
	sources = cmp.config.sources({
		-- { name = "copilot", priority = 90 }, -- For luasnip users.
		{ name = "nvim_lsp", priority = 100 },
		{ name = "cmp_tabnine", priority = 30 },
		{ name = "luasnip", priority = 20 }, -- For luasnip users.
		{ name = "path", priority = 100 },
		{ name = "emoji", insert = true, priority = 60 },
		{ name = "nvim_lua", priority = 50 },
		{ name = "nvim_lsp_signature_help", priority = 80 },
	}, {
		{ name = "buffer", priority = 50 },
		-- slow
		-- { name = "omni", priority = 40 },
		{ name = "spell", priority = 40 },
		{ name = "calc", priority = 50 },
		{ name = "treesitter", priority = 30 },
		{ name = "dictionary", keyword_length = 2, priority = 10 },
	}),
	-- LuaFormatter on
})

cmp.setup.filetype({ "gitcommit", "markdown" }, {
	sources = cmp.config.sources({
		-- { name = "copilot", priority = 90 }, -- For luasnip users.
		{ name = "nvim_lsp", priority = 100 },
		{ name = "cmp_tabnine", priority = 30 },
		{ name = "luasnip", priority = 80 }, -- For luasnip users.
		{ name = "rg", priority = 70 },
		{ name = "path", priority = 100 },
		{ name = "emoji", insert = true, priority = 60 },
	}, {
		{ name = "buffer", priority = 50 },
		-- { name = "omni", priority = 40 },
		{ name = "spell", priority = 40 },
		{ name = "calc", priority = 50 },
		{ name = "treesitter", priority = 30 },
		{ name = "mocword", priority = 60 },
		{ name = "dictionary", keyword_length = 2, priority = 10 },
	}),
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline("/", {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = "nvim_lsp_document_symbol" },
		-- { name = "cmdline_history" },
		{ name = "buffer" },
	}, {}),
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(":", {
	mapping = {
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			else
				fallback()
			end
		end, { "c" }),

		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			else
				fallback()
			end
		end, { "c" }),
		["<C-y>"] = {
			c = cmp.mapping.confirm({ select = false }),
		},
		["<C-q>"] = {
			c = cmp.mapping.abort(),
		},
	},
	sources = cmp.config.sources({ { name = "path" } }, { { name = "cmdline" }, { { name = "cmdline_history" } } }),
})

-- cmp.event:on("menu_opened", function()
-- 	vim.b.copilot_suggestion_hidden = true
-- end)
--
-- cmp.event:on("menu_closed", function()
-- 	vim.b.copilot_suggestion_hidden = false
-- end)
-- autopairs
-- local cmp_autopairs = require("nvim-autopairs.completion.cmp")
-- cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

-- cmp辞書プラグイン cmp-dictionaryの設定
local dict = require("cmp_dictionary")
dict.setup({
	-- The following are default values.
	exact = 2,
	first_case_insensitive = false,
	document = false,
	document_command = "wn %s -over",
	async = false,
	sqlite = false,
	max_items = -1,
	capacity = 5,
	debug = false,
})

local file = vim.fn.stdpath("data") .. "/../zsh/dictionary/my.dict"
local dic = {}
if vim.fn.filereadable(file) ~= 0 then
	dic = { file }
end

dict.switcher({
	spelllang = {
		en = dic,
	},
})

--lsp設定
local signs = { Error = "", Warn = "", Hint = "", Info = "" }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
require("lsp_signature").setup()
require("lspkind").init({
	-- enables text annotations
	--
	-- default: true
	mode = "symbol_text",

	-- default symbol map
	-- can be either 'default' (requires nerd-fonts font) or
	-- 'codicons' for codicon preset (requires vscode-codicons font)
	--
	-- default: 'default'
	preset = "codicons",

	-- override preset symbols
	--
	-- default: {}
	symbol_map = {
		Text = "",
		Method = "",
		Function = "",
		Constructor = "",
		Field = "ﰠ",
		Variable = "",
		Class = "ﴯ",
		Interface = "",
		Module = "",
		Property = "ﰠ",
		Unit = "塞",
		Value = "",
		Enum = "",
		Keyword = "",
		Snippet = "",
		Color = "",
		File = "",
		Reference = "",
		Folder = "",
		EnumMember = "",
		Constant = "",
		Struct = "פּ",
		Event = "",
		Operator = "",
		TypeParameter = "",
		-- Copilot = "",
	},
})
require("lspsaga").setup()

local keymap = vim.keymap.set

-- LSP finder - Find the symbol's definition
-- If there is no definition, it will instead be hidden
-- When you use an action in finder like "open vsplit",
-- you can use <C-t> to jump back
keymap("n", "gh", "<cmd>Lspsaga lsp_finder<CR>")

-- Code action
keymap({"n","v"}, "<leader>ca", "<cmd>Lspsaga code_action<CR>")

-- Rename all occurrences of the hovered word for the entire file
keymap("n", "gr", "<cmd>Lspsaga rename<CR>")

-- Rename all occurrences of the hovered word for the selected files
keymap("n", "gr", "<cmd>Lspsaga rename ++project<CR>")

-- Peek definition
-- You can edit the file containing the definition in the floating window
-- It also supports open/vsplit/etc operations, do refer to "definition_action_keys"
-- It also supports tagstack
-- Use <C-t> to jump back
keymap("n", "gp", "<cmd>Lspsaga peek_definition<CR>")

-- Go to definition
keymap("n","gd", "<cmd>Lspsaga goto_definition<CR>")

-- Peek type definition
-- You can edit the file containing the type definition in the floating window
-- It also supports open/vsplit/etc operations, do refer to "definition_action_keys"
-- It also supports tagstack
-- Use <C-t> to jump back
keymap("n", "gt", "<cmd>Lspsaga peek_type_definition<CR>")

-- Go to type definition
keymap("n","gt", "<cmd>Lspsaga goto_type_definition<CR>")


-- Show line diagnostics
-- You can pass argument ++unfocus to
-- unfocus the show_line_diagnostics floating window
keymap("n", "<leader>sl", "<cmd>Lspsaga show_line_diagnostics<CR>")

-- Show buffer diagnostics
keymap("n", "<leader>sb", "<cmd>Lspsaga show_buf_diagnostics<CR>")

-- Show workspace diagnostics
keymap("n", "<leader>sw", "<cmd>Lspsaga show_workspace_diagnostics<CR>")

-- Show cursor diagnostics
keymap("n", "<leader>sc", "<cmd>Lspsaga show_cursor_diagnostics<CR>")

-- Diagnostic jump
-- You can use <C-o> to jump back to your previous location
keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>")
keymap("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>")

-- Diagnostic jump with filters such as only jumping to an error
keymap("n", "[E", function()
  require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.ERROR })
end)
keymap("n", "]E", function()
  require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.ERROR })
end)

-- Toggle outline
keymap("n","<leader>o", "<cmd>Lspsaga outline<CR>")

-- Hover Doc
-- If there is no hover doc,
-- there will be a notification stating that
-- there is no information available.
-- To disable it just use ":Lspsaga hover_doc ++quiet"
-- Pressing the key twice will enter the hover window
keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>")

-- If you want to keep the hover window in the top right hand corner,
-- you can pass the ++keep argument
-- Note that if you use hover with ++keep, pressing this key again will
-- close the hover window. If you want to jump to the hover window
-- you should use the wincmd command "<C-w>w"
keymap("n", "K", "<cmd>Lspsaga hover_doc ++keep<CR>")

-- Call hierarchy
keymap("n", "<Leader>ci", "<cmd>Lspsaga incoming_calls<CR>")
keymap("n", "<Leader>co", "<cmd>Lspsaga outgoing_calls<CR>")

-- Floating terminal
keymap({"n", "t"}, "<A-d>", "<cmd>Lspsaga term_toggle<CR>")

require("mason").setup({})

vim.api.nvim_create_user_command("MasonUpgrade", function()
	local registry = require("mason-registry")
	registry.refresh()
	registry.update()
	local packages = registry.get_all_packages()
	for _, pkg in ipairs(packages) do
		if pkg:is_installed() then
			pkg:install()
		end
	end
	vim.cmd("doautocmd User MasonUpgradeComplete")
end, { force = true })

require("mason-lspconfig").setup({
ensure_installed = { "tsserver", }
})

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
-- selene: allow(unused_variable)
---@diagnostic disable-next-line: unused-local
local on_attach = function(client, bufnr)
	local function buf_set_keymap(...)
		vim.api.nvim_buf_set_keymap(bufnr, ...)
	end

	local function buf_set_option(...)
		vim.api.nvim_buf_set_option(bufnr, ...)
	end

	-- Enable completion triggered by <c-x><c-o>
	buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

	-- Mappings.
	local opts = { noremap = true, silent = true }

	-- See `:help vim.lsp.*` for documentation on any of the below functions
	buf_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
	buf_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
	buf_set_keymap("n", "?", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
	buf_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
	buf_set_keymap("n", "g?", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
	buf_set_keymap("n", "[_Lsp]wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
	buf_set_keymap("n", "[_Lsp]wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)
	buf_set_keymap("n", "[_Lsp]wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
	buf_set_keymap("n", "[_Lsp]D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
	-- buf_set_keymap("n", "[_Lsp]rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
	buf_set_keymap("n", "[_Lsp]a", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
	buf_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
	buf_set_keymap("n", "[_Lsp]e", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
	buf_set_keymap("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
	buf_set_keymap("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
	buf_set_keymap("n", "[_Lsp]q", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
	buf_set_keymap("n", "[_Lsp]f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)

	-- require("lsp_signature").on_attach()
	-- require("illuminate").on_attach(client)
	-- require("nvim-navic").attach(client, bufnr)
end

local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()
require("mason-lspconfig").setup_handlers({
	function(server_name)
		lspconfig[server_name].setup({ capabilities = capabilities, on_attach = on_attach })
	end,
	["rust_analyzer"] = function()
		local has_rust_tools, rust_tools = pcall(require, "rust-tools")
		if has_rust_tools then
			rust_tools.setup({ server = { capabilities = capabilities, on_attach = on_attach } })
		else
			lspconfig.rust_analyzer.setup({ capabilities = capabilities, on_attach = on_attach })
		end
	end,
	["lua_ls"] = function()
		lspconfig.lua_ls.setup({
			capabilities = capabilities,
			on_attach = on_attach,
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
		})
	end,
})

local lspsaga = require("lspsaga")
lspsaga.setup({ -- defaults ...
	ui = {
		code_action = "",
		diagnostic = "",
	},
	lightbulb = {
		virtual_text = false,
	},
	finder = {
		scroll_down = "<C-f>",
		scroll_up = "<C-b>", -- quit can be a table
		quit = { "q", "<ESC>" },
	},
	symbol_in_winbar = {
		enable = false,
		show_file = false,
	},
})

vim.keymap.set("n", "[_Lsp]r", "<cmd>Lspsaga rename ++project<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "M", "<cmd>Lspsaga code_action<cr>", { silent = true, noremap = true })
vim.keymap.set("x", "M", ":<c-u>Lspsaga range_code_action<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "?", "<cmd>Lspsaga hover_doc<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "[_Lsp]j", "<cmd>Lspsaga diagnostic_jump_next<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "[_Lsp]k", "<cmd>Lspsaga diagnostic_jump_prev<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "[_Lsp]f", "<cmd>Lspsaga lsp_finder<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "[_Lsp]s", "<Cmd>Lspsaga signature_help<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "[_Lsp]d", "<cmd>Lspsaga preview_definition<CR>", { silent = true })
vim.keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", { silent = true, noremap = true })
-- vim.keymap.set("n", "gd", "<cmd>Lspsaga goto_definition<CR>")
vim.keymap.set("n", "[_Lsp]l", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "[_Lsp]c", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "[_Lsp]b", "<cmd>Lspsaga show_buf_diagnostics<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "[E", function()
	require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true, noremap = true })
vim.keymap.set("n", "]E", function()
	require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true, noremap = true })
vim.keymap.set("n", "<leader>o", "<cmd>Lspsaga outline<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "[_Lsp]I", "<cmd>Lspsaga incoming_calls<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "[_Lsp]O", "<cmd>Lspsaga outgoing_calls<CR>", { silent = true, noremap = true })

--TypeScript設定
require'lspconfig'.tsserver.setup{
	filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx"},
	root_dir = function() return vim.loop.cwd() end
}

--prettier設定
local status, prettier = pcall(require, "prettier")
if (not status) then return end

prettier.setup {
	bin = 'prettierd',
	filetypes = {
		"html",
		"css",
		"javascript",
		"javascriptreact",
		"typescript",
		"typescriptreact",
		"json",
		"scss",
		"less"
	}
}


--flutter設定
require("flutter-tools").setup {} -- use defaults
