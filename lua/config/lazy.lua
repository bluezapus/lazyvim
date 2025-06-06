local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
  spec = {
    {
      "LazyVim/LazyVim",
      import = "lazyvim.plugins",
      opts = {
        colorscheme = "carbonfox",
      },
    },
    {
      import = "lazyvim.plugins.extras.lang.typescript",
    },
    { import = "plugins.dap-python" },
    { import = "lazyvim.plugins.extras.dap.core" },
    {
      import = "lazyvim.plugins.extras.lang.python",
    },
    {
      import = "lazyvim.plugins.extras.lang.json",
    },
    {
      import = "plugins",
    },
  },
  defaults = {
    lazy = false,
    version = false,
  },
  checker = {
    enabled = true,
  },
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
