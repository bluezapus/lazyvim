return {
  {
    "stevearc/conform.nvim",
    opts = {
      -- Auto save activated
      format_on_save = function(bufnr)
        return true
      end,
      -- filetype formatter
      formatters_by_ft = {
        python = { "black" },
        htmldjango = { "djlint" },
        html = { "djlint" },
      },
      -- djlint formatter
      formatters = {
        djlint = {
          command = "djlint",
          args = { "--reformat", "-" },
        },
      },
    },
  },
}
