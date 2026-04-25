return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master", -- main is in active migration; master is stable for now
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require("nvim-treesitter.configs").setup({
        -- Parsers to install automatically
        ensure_installed = {
          "bash",
          "fish",
          "lua",
          "markdown",
          "markdown_inline",
          "json",
          "yaml",
          "toml",
          "vim",
          "vimdoc",
          "regex",
          "diff",
          "gitcommit",
          "gitignore",
        },

        -- Install parsers asynchronously (doesn't block startup)
        sync_install = false,

        -- Auto-install missing parsers when entering a buffer
        auto_install = true,

        highlight = {
          enable = true,
          -- Don't use both treesitter AND legacy regex highlighting
          additional_vim_regex_highlighting = false,
        },

        indent = {
          enable = true,
        },
      })
    end,
  },
}

