return {
  {
    "ms-jpq/coq_nvim",
    dependencies = {
      { "ms-jpq/coq.artifacts", branch = "artifacts" },
    },
    name = "coq",        -- keep the friendly alias if needed
    branch = "coq",
    lazy = false,        -- load at startup
    init = function()
      -- enable COQ to auto-start with no greeting message
      vim.g.coq_settings = {
        auto_start = true,
      }
    end,
    config = function()
      vim.cmd("COQnow -s")
    end,
  },
}

