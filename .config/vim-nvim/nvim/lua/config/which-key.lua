local wk = require("which-key")
wk.add({
  { "<leader>o", group = "Obsidian" }, -- group
  { "<leader>od", desc = "Delete", mode = "n" },
  { "<S-j", desc = "Move Down", mode = "v" },
  { "<S-k", desc = "Move Up", mode = "v" },
  -- { "<leader>ww", desc = "Write", mode = "n" },
  -- {
  --   "<leader>fb",
  --   function()
  --     print("hello")
  --   end,
  --   desc = "Foobar",
  -- },
  -- { "<leader>fn", desc = "New File" },
  -- { "<leader>f1", hidden = true }, -- hide this keymap
  -- { "<leader>w", proxy = "<c-w>", group = "windows" }, -- proxy to window mappings
  -- {
  --   "<leader>b",
  --   group = "buffers",
  --   expand = function()
  --     return require("which-key.extras").expand.buf()
  --   end,
  -- },
  -- {
  --   -- Nested mappings are allowed and can be added in any order
  --   -- Most attributes can be inherited or overridden on any level
  --   -- There's no limit to the depth of nesting
  --   mode = { "n", "v" }, -- NORMAL and VISUAL mode
  --   { "<leader>q", "<cmd>q<cr>", desc = "Quit" }, -- no need to specify mode since it's inherited
  --   { "<leader>w", "<cmd>w<cr>", desc = "Write" },
  -- },
})
