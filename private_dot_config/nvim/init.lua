-- ============================================================
-- Neovim Configuration
-- ============================================================

-- Set leader keys FIRST, before anything else that might use them
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Load options and keymaps
require("config.options")
require("config.keymaps")

-- Bootstrap Lazy.nvim and load plugins
require("config.lazy")

