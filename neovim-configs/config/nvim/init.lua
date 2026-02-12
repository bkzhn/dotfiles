-- ~/.config/nvim/init.lua

-- Load core settings
--require("core.options")
--require("core.keymaps")
--require("core.plugins")


-- enable italics
vim.g.one_allow_italics = 1

-- colorscheme
vim.cmd.colorscheme("retrobox")


-- Line numbers
vim.wo.number = true

vim.opt.list = true

-- hightliht current line
vim.opt.cursorline = true

-- show the ruler (line nad column number in the status line)
vim.opt.ruler = true

-- enable mouse support
vim.opt.mouse = "a"


-- search
-- ignore case
vim.opt.ignorecase = true
-- show matches while typing
vim.opt.incsearch = true
-- hightliht search
vim.opt.hlsearch = true


-- make sure there are 5 lines above and belove current
vim.opt.scrolloff = 5


-- indents
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.copyindent = true
vim.opt.autoindent = true


-- Plugins
vim.g.mapleader = " "

-- recommended: disable netrw (important)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optional: better UI
--vim.opt.termiguicolors = true

-- steup nvim-tree
require("nvim-tree").setup({
	view = {
		width = 35,
		side = "left",
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = false,
	},
	--[[keymaps = {
		list = {
			{
				key = "l", cb = require("nvim-tree.api").node.open.edit
			},
			{
				key = "<CR>", cb = require("nvim-tree.api").node.open.edit
			},
			{
				key = "h", cb = require("nvim-tree.api").node.open.horizontal
			},
			{
				key = "v", cb = require("nvim-tree.api").node.open.vertical
			},
		}
	},]]
})

-- keymap to toggle tree
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")

-- jump to file
vim.keymap.set("n", "<leader>f", ":NvimTreeFindFile<CR>", { desc = "Find current file in nvim-tree" })

-- telescope
require("telescope").setup({
	defaults = {
		file_ignore_patterns = {
			"__pycache__/",
			"%.pyc",
			"%venv/",
			"%.git/",
			"%node_modules/",
		},
	},
})

vim.keymap.set("n", "<leader>ff", function() require("telescope.builtin").find_files() end)

