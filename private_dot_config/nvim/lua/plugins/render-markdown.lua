return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
    ft = { "markdown" }, -- only load for markdown files
    opts = {
      -- Sensible defaults, plus a few tweaks
      heading = {
        -- Use distinct background colors for H1-H6 (works well with Gruvbox)
        enabled = true,
      },
      code = {
        -- Subtle background for code blocks
        style = "normal",
      },
      bullet = {
        -- Unicode bullets instead of raw `*` / `-`
        icons = { "●", "○", "◆", "◇" },
      },
      checkbox = {
        unchecked = { icon = "󰄱 " },
        checked = { icon = "󰱒 " },
      },
    },
  },
}

