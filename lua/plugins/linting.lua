return {
  {
    "stevearc/conform.nvim",
    opts = {
      -- Aktifkan format otomatis saat save
      format_on_save = function(bufnr)
        -- kamu bisa sesuaikan logika ini, misalnya hanya untuk file tertentu
        return true
      end,
      -- Formatters berdasarkan filetype
      formatters_by_ft = {
        python = { "black" },
        htmldjango = { "djlint" },
        html = { "djlint" },
      },
      -- Konfigurasi formatter djlint
      formatters = {
        djlint = {
          command = "djlint",
          args = { "--reformat", "-" },
        },
      },
    },
  },
}
