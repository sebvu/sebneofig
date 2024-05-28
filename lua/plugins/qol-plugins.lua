local opts = { noremap = true, silent = true }

return {
	-- A list of small, quality of line plugins.

	-- Tmux Navigator for seamless navigation between nvim and tmux panes
	{ "christoomey/vim-tmux-navigator" },
	-- Hardtime plugin for preventing bad habits taking over, not really QOL..
	{
		"m4xshen/hardtime.nvim",
		dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
		opts = {
			disabled_filetypes = { "qf", "netrw", "neo-tree", "lazy", "mason", "oil" },
		},
	},
	-- Emoji picker, easy searcher to use emojis.
	{
		"ziontee113/icon-picker.nvim",
		config = function()
			require("icon-picker").setup({ disable_legacy_commands = true })

			vim.keymap.set("n", "<Leader><Leader>i", "<cmd>IconPickerNormal<cr>", opts)
			vim.keymap.set("n", "<Leader><Leader>y", "<cmd>IconPickerYank<cr>", opts) --> Yank the selected icon into register
			-- vim.keymap.set("i", "<C-i>", "<cmd>IconPickerInsert<cr>", opts)
		end,
	},
	-- Highlighted yank for better visual feedback
	{ "machakann/vim-highlightedyank", lazy = false },
	-- Tailwind colorizer for selecting tailwind colors
	{
		"roobert/tailwindcss-colorizer-cmp.nvim",
		config = function()
			require("tailwindcss-colorizer-cmp").setup({
				color_square_width = 2,
			})
		end,
	},
	-- Git signs for implementing easy git differentiation
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
			vim.keymap.set("n", "<leader>gp", "<cmd>Gitsigns preview_hunk_inline<CR>", opts) -- preview hunk inline
		end,
	},
	-- Kitty Conf syntax highlighting
	{
		"fladson/vim-kitty",
	},
	-- Adding indentation lines
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
	},
	-- Colorizer for colorizing hex codes and other readable colors
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup({
				filetypes = { "*" },
				user_default_options = {
					RGB = true, -- #RGB hex codes
					RRGGBB = true, -- #RRGGBB hex codes
					names = true, -- "Name" codes like Blue or blue
					RRGGBBAA = false, -- #RRGGBBAA hex codes
					AARRGGBB = false, -- 0xAARRGGBB hex codes
					rgb_fn = false, -- CSS rgb() and rgba() functions
					hsl_fn = false, -- CSS hsl() and hsla() functions
					css = false, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
					css_fn = false, -- Enable all CSS *functions*: rgb_fn, hsl_fn
					-- Available modes for `mode`: foreground, background,  virtualtext
					mode = "background", -- Set the display mode.
					-- Available methods are false / true / "normal" / "lsp" / "both"
					-- True is same as normal
					tailwind = false, -- Enable tailwind colors
					-- parsers can contain values used in |user_default_options|
					sass = { enable = false, parsers = { "css" } }, -- Enable sass colors
					virtualtext = "■",
					-- update color values even if buffer is not focused
					-- example use: cmp_menu, cmp_docs
					always_update = false,
				},
			})
		end,
	},
	-- Discord rich presence for blazingly fast neovim presence
	{
		"andweeb/presence.nvim",
		config = function()
			local require = require("presence")
			require.setup({
				-- General options
				auto_update = true, -- Update activity based on autocmd events (if `false`, map or manually execute `:lua package.loaded.presence:update()`)
				neovim_image_text = "I use neovim btw.", -- Text displayed when hovered over the Neovim image
				main_image = "file", -- Main image display (either "neovim" or "file")
				client_id = "793271441293967371", -- Use your own Discord application client id (not recommended)
				log_level = nil, -- Log messages at or above this level (one of the following: "debug", "info", "warn", "error")
				debounce_timeout = 10, -- Number of seconds to debounce events (or calls to `:lua package.loaded.presence:update(<filename>, true)`)
				enable_line_number = true, -- Displays the current line number instead of the current project
				blacklist = {}, -- A list of strings or Lua patterns that disable Rich Presence if the current file name, path, or workspace matches
				buttons = true, -- Configure Rich Presence button(s), either a boolean to enable/disable, a static table (`{{ label = "<label>", url = "<url>" }, ...}`, or a function(buffer: string, repo_url: string|nil): table)
				file_assets = {}, -- Custom file asset definitions keyed by file names and extensions (see default config at `lua/presence/file_assets.lua` for reference)
				show_time = true, -- Show the timer

				-- Rich Presence text options
				editing_text = "Changing text in %s", -- Format string rendered when an editable file is loaded in the buffer (either string or function(filename: string): string)
				file_explorer_text = "Mindlessly browsing %s", -- Format string rendered when browsing a file explorer (either string or function(file_explorer_name: string): string)
				git_commit_text = "Committing war crimes", -- Format string rendered when committing changes in git (either string or function(filename: string): string)
				plugin_manager_text = "Managing plugins", -- Format string rendered when managing plugins (either string or function(plugin_manager_name: string): string)
				reading_text = "Skimming %s", -- Format string rendered when a read-only or unmodifiable file is loaded in the buffer (either string or function(filename: string): string)
				workspace_text = "Butchering %s", -- Format string rendered when in a git repository (either string or function(project_name: string|nil, filename: string): string)
				line_number_text = "Line %s out of %s", -- Format string rendered when `enable_line_number` is set to true (either string or function(line_number: number, line_count: number): string)
			})
		end,
	},
}
