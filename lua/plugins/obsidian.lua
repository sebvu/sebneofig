return {
	"epwalsh/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	lazy = true,
	ft = "markdown",
	-- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
	-- event = {
	--   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
	--   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
	--   "BufReadPre path/to/my-vault/**.md",
	--   "BufNewFile path/to/my-vault/**.md",
	-- },
	dependencies = {
		-- Required.
		"nvim-lua/plenary.nvim",

		-- see below for full list of optional dependencies 👇
	},

	config = function()
		local obsidian = require("obsidian")
		vim.opt_local.conceallevel = 2 -- obsidian.nvim sets explicit conceal characters, set conceallevel to 2 as per issue 286
		local opts = { noremap = true, silent = true }
		-- keymaps
		vim.keymap.set("n", "<leader>ot", "<cmd>ObsidianToggleCheckbox<CR>", opts) -- toggle/create checkbox
		vim.keymap.set("n", "<leader>of", "<cmd>ObsidianFollowLink<CR>", opts) -- follows link under cursor

		obsidian.setup({
			workspaces = {
				{
					name = "JesterBrain",
					path = "/home/sebvu/vaults/JesterBrain",
				},
			},
			notes_subdir = "inbox",
			new_notes_location = "notes_subdir",

			mappings = {
				["gf"] = {
					action = function()
						return obsidian.util.gf_passthrough()
					end,
					opts = { noremap = false, expr = true, buffer = true },
				},
			},
		})
	end,
}
