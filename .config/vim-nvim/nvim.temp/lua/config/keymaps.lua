-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

vim.keymap.set("n", "<Esc>", vim.cmd.noh)
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")
vim.keymap.set("n", "<c-d>", "<c-d>zz")
vim.keymap.set("n", "<c-u>", "<c-u>zz")
vim.keymap.set("n", "<c-f>", "<c-f>zz")
vim.keymap.set("n", "<c-b>", "<c-b>zz")
vim.keymap.set("n", "<leader>w", vim.cmd.write)
vim.keymap.set("n", "<S-h>", vim.cmd.bp)
vim.keymap.set("n", "<S-l>", vim.cmd.bn)
vim.keymap.set("v", "<S-k>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<S-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("n", "<leader>lk", function() vim.diagnostic.goto_prev() end)
vim.keymap.set("n", "<leader>lj", function() vim.diagnostic.goto_next() end)
vim.keymap.set("n", "<leader>lc", function() vim.lsp.buf.code_aciton() end)
vim.keymap.set("n", "<leader>q", vim.cmd.quit)

vim.keymap.set("n", "<leader>on", ":ObsidianNew<CR>")
vim.keymap.set("n", "<leader>o/", ":ObsidianSearch<CR>")
vim.keymap.set("n", "<leader>ol", ":ObsidianLink<CR>")
vim.keymap.set("n", "<leader>of", ":ObsidianQuickSwitch<CR>")
vim.keymap.set("n", "<leader>od", ":!rm %<CR>")
