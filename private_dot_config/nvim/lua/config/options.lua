-- ============================================================
-- Editor Options
-- ============================================================

local opt = vim.opt

-- Line numbers (hybrid: current absolute, others relative)
opt.number = true
opt.relativenumber = true

-- Indentation (2 spaces default)
opt.expandtab = true          -- convert tabs to spaces
opt.shiftwidth = 2            -- indent size for auto-indent
opt.tabstop = 2               -- visual width of tab character
opt.softtabstop = 2           -- tab key inserts 2 spaces
opt.smartindent = true        -- auto-indent new lines sensibly

-- System clipboard integration
opt.clipboard = "unnamedplus" -- yank/paste uses macOS clipboard

-- Search
opt.ignorecase = true         -- case-insensitive search...
opt.smartcase = true          -- ...unless search contains uppercase
opt.hlsearch = true           -- highlight matches
opt.incsearch = true          -- incremental search

-- Visual
opt.termguicolors = true      -- 24-bit color (required for Gruvbox)
opt.signcolumn = "yes"        -- always show sign column (prevents text shifting)
opt.cursorline = true         -- highlight current line
opt.scrolloff = 8             -- keep 8 lines visible above/below cursor
opt.wrap = false              -- don't wrap long lines by default
opt.syntax = "off"            -- disable syntax highlighting (handled by plugins)

-- Splits
opt.splitright = true         -- vertical splits open on the right
opt.splitbelow = true         -- horizontal splits open below

-- Files
opt.swapfile = false          -- don't create swap files
opt.backup = false            -- don't create backups
opt.undofile = true           -- persistent undo across sessions
opt.updatetime = 250          -- faster completion/swap writes (affects gitsigns)

-- Misc
opt.mouse = "a"               -- enable mouse in all modes
opt.confirm = true            -- ask to save on quit instead of erroring

