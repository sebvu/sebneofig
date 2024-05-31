local opts = { noremap = true, silent = true }

-- Default Non-Plugin Keymaps

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Splitting panes
vim.keymap.set("n", "<leader>sv", "<cmd>vsplit<CR>", opts) -- Split Vertically
vim.keymap.set("n", "<leader>sh", "<cmd>split<CR>", opts) -- Split Vertically
vim.keymap.set("n", "<leader>sq", "<cmd>close<CR>", opts) -- Split Vertically

-- Allows for spam indentation without rehighlighting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Cursor is centered when moving up or down half a page
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- move down half a page and center
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- move up half a page and center

-- Allow for natural Ctrl+/ commenting
vim.keymap.set("n", "<C-_>", "gcc gv", { remap = true })
vim.keymap.set("v", "<C-_>", "gc gv", { remap = true })
