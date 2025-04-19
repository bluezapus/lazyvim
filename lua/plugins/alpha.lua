return {
  {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VimEnter",
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      dashboard.section.header.val = {


        [[  ██████╗ ██╗     ██╗   ██╗███████╗███████╗ █████╗ ██████╗ ██╗   ██╗███████╗  ]],
        [[  ██╔══██╗██║     ██║   ██║██╔════╝╚══███╔╝██╔══██╗██╔══██╗██║   ██║██╔════╝  ]],
        [[  ██████╔╝██║     ██║   ██║█████╗    ███╔╝ ███████║██████╔╝██║   ██║███████╗  ]],
        [[  ██╔══██╗██║     ██║   ██║██╔══╝   ███╔╝  ██╔══██║██╔═══╝ ██║   ██║╚════██║  ]],
        [[  ██████╔╝███████╗╚██████╔╝███████╗███████╗██║  ██║██║     ╚██████╔╝███████║  ]],
        [[  ╚═════╝ ╚══════╝ ╚═════╝ ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝      ╚═════╝ ╚══════╝  ]],
        [[                 🚀  Welcome to Your NeoVim with Style!                       ]],
 }

      -- 🌀 Tambahkan warna biru ke header
      dashboard.section.header.opts = {
        hl = "DashboardHeader",
	position = "center",
      }
      vim.cmd([[highlight DashboardHeader guifg=#4aa5f0]])

      -- Footer tetap keren
      dashboard.section.footer.val = {
        "",
        "🔧  Config by Lynx on LazyVim 💻",
      }

      dashboard.opts.opts.noautocmd = true
      alpha.setup(dashboard.opts)
    end,
  },
}
