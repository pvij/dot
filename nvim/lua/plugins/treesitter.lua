return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "VeryLazy" },
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          	"bash",
		"dockerfile",
		"go",
		"json",
		"lua",
		"python",
		"yaml",
		"gitignore",
		"gosum",
		"gomod",
		"git_rebase",
		"c",
		"zig",
		"rust",
		"toml",
        },
        sync_install = true,
        highlight = { enable = true },
      })

      -- enable treesitter-based folding
      -- vim.opt.foldmethod = "expr"
      -- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
    end,
  },
}
