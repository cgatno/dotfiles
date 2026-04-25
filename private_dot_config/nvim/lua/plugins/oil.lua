return {
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false, -- oil needs to load eagerly to handle directory arguments
    keys = {
      { "-", "<cmd>Oil<CR>", desc = "Open parent directory in Oil" },
      { "<leader>e", "<cmd>Oil<CR>", desc = "Open file explorer (Oil)" },
    },
    opts = {
      -- Replaces netrw as the default file explorer
      default_file_explorer = true,
      -- Show hidden files by default (we're devs, we want to see dotfiles)
      view_options = {
        show_hidden = true,
      },
      -- Use fzf-lua-style floating window for actions
      float = {
        padding = 2,
        max_width = 100,
        max_height = 30,
      },
    },
  },
}

