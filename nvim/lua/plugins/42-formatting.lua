return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      -- Merge with existing LazyVim options
      opts.formatters_by_ft = vim.tbl_deep_extend("force", opts.formatters_by_ft or {}, {
        c = { "c_formatter_42" },
      })
      opts.formatters = vim.tbl_deep_extend("force", opts.formatters or {}, {
        c_formatter_42 = {
          command = "c_formatter_42",
          args = { "-" },
          stdin = true,
        },
      })
    end,
  },
  -- Add a custom keymap for formatting
  {
    "LazyVim/LazyVim",
    opts = function(_, opts)
      opts.keys = vim.tbl_extend("force", opts.keys or {}, {
        { "<leader>42", "<cmd>ConformFormat<cr>", desc = "Format with 42 Formatter" },
      })
    end,
  },
}

