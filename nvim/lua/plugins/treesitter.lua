return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,
    config = function()
      require("nvim-treesitter").install{
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
	"java",
	"scala"
	-- sync_install = true,
        -- highlight = { enable = true },
      }
    end,
  },
}
