-- Options are automaticall loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here


vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = false
vim.o.signcolumn = "no"
vim.wo.wrap = false
vim.wo.linebreak = false
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.cmdheight = 0
vim.o.showcmd = true
vim.o.showcmdloc = "statusline"
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.autoindent = true
vim.o.expandtab = true
--vim.api.nvim_set_hl(0, "Statusline", {bg = "none"})
--vim.api.nvim_set_hl(0, "Normal", {bg = "none"})

--vim.cmd("set statusline=%#TablineSel#%t%m%#Normal#%=%=%S%=[%l/%L]%#TablineSel#(%{strftime('%d-%m-%y/%H:%M')})")
--vim.cmd("set statusline=%#TablineSel#%F%m%#Normal#%=%=%S%=[%l/%L](%{strftime('%d-%m-%y/%H:%M')})")
--vim.cmd("set statusline=%#TablineSel#%F%m%#Normal#%=%=%S%=[%l/%L]%#TablineSel#(%{strftime('%d-%m-%y/%H:%M')})")

vim.o.conceallevel = 2
