return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      { "ms-jpq/coq_nvim", branch = "coq" },
    },
    config = function()
      local lspconfig = vim.lsp.config 
      local lspconfig_util = require("lspconfig/util")
      local coq = require("coq")

      -- Python LSP: Jedi
      lspconfig("jedi_language_server", coq.lsp_ensure_capabilities({
	      documentFormatting = false,
      	})
      )
      vim.lsp.enable("jedi_language_server")

      -- Python formatter/linter via EFM
      lspconfig("efm", {
        init_options = { documentFormatting = true },
        filetypes = { "python" },
        settings = {
          rootMarkers = { ".git" },
          languages = {
            python = {
              { formatCommand = "black --quiet -", formatStdin = true },
              {
                lintCommand = "pylint --output-format text --score no --msg-template {path}:{line}:{column}:{C}:{msg} ${INPUT}",
                lintFormats = { "%f:%l:%c:%t:%m" },
                lintOffsetColumns = 1,
                lintStdin = false,
                lintCategoryMap = {
                  I = "H",
                  R = "I",
                  C = "I",
                  W = "W",
                  E = "E",
                  F = "E",
                },
              },
            },
          },
        },
      })
      vim.lsp.enable("efm")

      -- Go LSP: gopls
      lspconfig("gopls", coq.lsp_ensure_capabilities({
          cmd = { "gopls", "serve" },
          filetypes = { "go", "gomod" },
          root_dir = lspconfig_util.root_pattern("go.work", "go.mod", ".git"),
        })
      )
      vim.lsp.enable("gopls")

      -- C/C++ LSP: ccls
      lspconfig("ccls", coq.lsp_ensure_capabilities({
          cmd = { "ccls-clang-10" },
        })
      )
      vim.lsp.enable("ccls")

    end,
  },
}

