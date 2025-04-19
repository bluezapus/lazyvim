return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        transparent_background = true,
        color_overrides = {
          mocha = {
            base = "#0d1117", -- primary background (dark gray)
            mantle = "#0b0f14",
            crust = "#080c10",

            text = "#c6d0f5", -- default text
            subtext1 = "#a5adce",
            subtext0 = "#8c94b8",

            surface2 = "#4b526d",
            surface1 = "#3b3f58",
            surface0 = "#2c2f44",

            overlay2 = "#6e738d",
            overlay1 = "#5c607e",
            overlay0 = "#4a4e68",

            blue = "#4aa5f0", -- BlueZapus blue
            lavender = "#7c99f4",
            sapphire = "#3e8fb0", -- cool cyan
            sky = "#91d7e3",

            mauve = "#c678dd", -- purple accent
            pink = "#ff7eb6",
            red = "#e06c75",
            maroon = "#c061cb",

            peach = "#f78c6c",
            yellow = "#ebcb8b",
            green = "#a3be8c",
            teal = "#94e2d5",
          },
        },
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          telescope = true,
          treesitter = true,
          notify = true,
          mini = true,
          dashboard = true,
          mason = true,
        },
        custom_highlights = function(colors)
          return {
            Comment = { fg = colors.overlay1, italic = true },
            Function = { fg = colors.blue, bold = true },
            Keyword = { fg = colors.mauve, italic = true },
            String = { fg = colors.green },
            Variable = { fg = colors.sapphire },
          }
        end,
      })

      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
