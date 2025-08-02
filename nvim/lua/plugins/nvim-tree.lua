return {
  {
    "nvim-tree/nvim-tree.lua",              -- updated repo path
    dependencies = { "nvim-tree/nvim-web-devicons" },  -- for file icons support
    config = function()
      require("nvim-tree").setup({})
    end,
  },
}
