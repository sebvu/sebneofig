local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
-- Scroll h-- Scroll h-- Scroll h-- Scroll h-- Scroll h-- Scroll h-- Scroll h-- Scroll h-- Scroll h-- Scroll h-- Scroll h-- Scroll h-- Scroll h-- Scroll h-- Scroll h-- Scroll h-- Scroll h-- Scroll h-- Scroll h-- Scroll h-- Scroll h-- Scroll h-- Scroll h-- Scroll h-- Scroll h-- Scroll oh

-- Split planes
vim.keymap.set("n", "<leader>sv", "<cmd>vsplit<CR>", opts) -- Vertical Svlit
vim.keymap.set("n", "<leader>sh", "<cmd>split<CR>", opts) -- Horizontal Split

-- Scroll horizontally (not working, fix)
-- vim.keymap.set("n", "C-l", "20zl", { remap = true } )
-- vim.keymap.set("n", "C-h", "20zh", { remap = true } )

-- Re-highlight line after indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Disable arrowkeys
vim.keymap.set("n", "<Up>", "<Nop>", opts)
vim.keymap.set("n", "<Left", "<Nop>", opts)
vim.keymap.set("n", "<Right>", "<Nop>", opts)
vim.keymap.set("n", "<Down>", "<Nop>", opts)
vim.keymap.set("v", "<Up>", "<Nop>", opts)
vim.keymap.set("v", "<Left", "<Nop>", opts)
vim.keymap.set("v", "<Right>", "<Nop>", opts)
vim.keymap.set("v", "<Down>", "<Nop>", opts)
vim.keymap.set("i", "<Up>", "<Nop>", opts)
vim.keymap.set("i", "<Left", "<Nop>", opts)
vim.keymap.set("i", "<Right>", "<Nop>", opts)
vim.keymap.set("i", "<Down>", "<Nop>", opts)
