return {
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = { "mfussenegger/nvim-dap" },
    config = function()
      local dap_python = require("dap-python")

      -- Fungsi auto-detect virtualenv Python
      local function get_python_path()
        local cwd = vim.fn.getcwd()
        local paths = {
          "/.venv/bin/python",
          "/venv/bin/python",
          "/../.venv/bin/python",
          "/../venv/bin/python",
        }

        for _, path in ipairs(paths) do
          if vim.fn.executable(cwd .. path) == 1 then
            return cwd .. path
          end
        end

        local home_venv = vim.fn.expand("~/.virtualenvs/debugpy/bin/python")
        if vim.fn.executable(home_venv) == 1 then
          return home_venv
        end

        return "python" -- fallback ke system python
      end

      dap_python.setup(get_python_path())
    end,
  },

  {
    "jose-elias-alvarez/null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local null_ls = require("null-ls")

      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.black,
          null_ls.builtins.formatting.isort,
          null_ls.builtins.diagnostics.ruff,
        },
      })
    end,
  },

  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "saadparwaiz1/cmp_luasnip",
    },
  },

  {
    "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" },
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },
}
