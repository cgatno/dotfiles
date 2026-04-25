return {
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = "FzfLua",
    keys = {
      { "<leader>ff", "<cmd>FzfLua files<CR>",       desc = "Find files" },
      { "<leader>fg", "<cmd>FzfLua live_grep<CR>",   desc = "Live grep (ripgrep)" },
      { "<leader>fb", "<cmd>FzfLua buffers<CR>",     desc = "Find buffers" },
      { "<leader>fh", "<cmd>FzfLua help_tags<CR>",   desc = "Help tags" },
      { "<leader>fr", "<cmd>FzfLua oldfiles<CR>",    desc = "Recent files" },
      { "<leader>fk", "<cmd>FzfLua keymaps<CR>",     desc = "Find keymaps" },
      { "<leader>f/", "<cmd>FzfLua lgrep_curbuf<CR>", desc = "Search in current buffer" },
    },
    opts = {
      winopts = {
        height = 0.85,
        width = 0.80,
        preview = {
          layout = "vertical",
          vertical = "up:60%",
        },
      },
    },
  },
}

