-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- vim.keymap.set("n", "<S-Up>", "10<C-a>")
-- vim.keymap.set("n", "<S-Down>", "20<C-x>")
-- vim.keymap.set("n", "<S-PageUp>", "100<C-a>")
-- vim.keymap.set("n", "<S-PageDown>", "100<C-x>")

vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")
vim.keymap.set("n", "<c-d>", "<c-d>zz")
vim.keymap.set("n", "<c-u>", "<c-u>zz")
vim.keymap.set("n", "<c-f>", "<c-f>zz")
vim.keymap.set("n", "<c-b>", "<c-b>zz")

vim.keymap.set("n", "<leader>on", ":ObsidianNew<CR>")
vim.keymap.set("n", "<leader>ol", ":ObsidianLink<CR>")
vim.keymap.set("n", "<leader>o/", ":ObsidianSearch<CR>")
vim.keymap.set("n", "<leader>of", ":ObsidianQuickSwitch<CR>")
vim.keymap.set("n", "<leader>od", ":!rm %<CR>")

vim.keymap.set("n", "<A-j>", "")
vim.keymap.set("n", "<A-k>", "")
vim.keymap.set("v", "<A-j>", "")
vim.keymap.set("v", "<A-k>", "")
vim.keymap.set("i", "<A-j>", "")
vim.keymap.set("i", "<A-k>", "")
vim.keymap.set("n", "<C-s>", "")
vim.keymap.set("v", "<C-s>", "")
vim.keymap.set("i", "<C-s>", "")

vim.keymap.set("v", "<S-k>", ":m '<-2<CR>gv=gv", { silent = true, desc = "Move Line Up" })
vim.keymap.set("v", "<S-j>", ":m '>+1<CR>gv=gv", { silent = true, desc = "Move Line Down" })
