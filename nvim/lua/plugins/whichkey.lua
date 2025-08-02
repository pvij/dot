-- lua/plugins/whichkey.lua
return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      local wk = require("which-key")
      wk.add({
        -- Group name hints if pressed only `<leader>f` or `<leader>l`
        { "<leader>f", group = "file" },
        { "<leader>l", group = "lsp" },

        -- File-related mappings
        { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File", remap = false },
        { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Search By Text", remap = false },
        { "<leader>fp", "<cmd>NvimTreeToggle<cr>", desc = "Toggle Tree", remap = false },
        { "<leader>ft", "<cmd>NvimTreeFindFile<cr>", desc = "Find in Tree", remap = false },
        { "<leader>fd", "<cmd>Telescope diagnostics<cr>", desc = "List diagnostics", remap = false },

        -- LSP-related mappings
        { "<leader>ld", "<cmd>lua vim.lsp.buf.definition()<cr>", desc = "Go to definition", remap = false },
        { "<leader>lr", "<cmd>lua vim.lsp.buf.references()<cr>", desc = "References", remap = false },
        { "<leader>lf", "<cmd>lua vim.lsp.buf.format({async=true})<cr>", desc = "Format", remap = false },
      }, {
        mode = "n",         -- Apply in normal mode
      })
    end,
  },
}
