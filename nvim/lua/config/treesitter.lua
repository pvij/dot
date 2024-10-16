local o = vim.opt
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
	highlight = {
		enable = true,
	},
})

o.foldmethod = "expr"
o.foldexpr = "nvim_treesitter#foldexpr()"
