return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000, -- load before other plugins
    lazy = false,    -- load immediately at startup
    config = function()
      require("gruvbox").setup({
        contrast = "",
        -- Other options if you want to tweak later:
        -- terminal_colors = true,
        -- italic = { strings = false, comments = true },
        -- transparent_mode = false,
      })
      vim.o.background = "dark"
      vim.cmd.colorscheme("gruvbox")
    end,
  },
}

