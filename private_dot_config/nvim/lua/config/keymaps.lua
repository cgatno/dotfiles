-- ============================================================
-- Keymaps
-- ============================================================

-- Shorthand for setting keymaps with a description
local map = function(mode, lhs, rhs, desc)
  vim.keymap.set(mode, lhs, rhs, { desc = desc, silent = true })
end

-- ---------- Clear search highlighting ----------
map("n", "<Esc>", "<cmd>nohlsearch<CR>", "Clear search highlight")

-- ---------- Better up/down on wrapped lines ----------
map({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", "Down (respecting wrap)")
map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", "Up (respecting wrap)")
-- The above need remap flag since they're expressions:
vim.keymap.set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- ---------- Window navigation (works with tmux via vim-tmux-navigator) ----------
-- These are overridden when vim-tmux-navigator loads; safe to keep as fallback
map("n", "<C-h>", "<C-w>h", "Go to left window")
map("n", "<C-j>", "<C-w>j", "Go to lower window")
map("n", "<C-k>", "<C-w>k", "Go to upper window")
map("n", "<C-l>", "<C-w>l", "Go to right window")

-- ---------- Buffer navigation ----------
map("n", "<S-h>", "<cmd>bprevious<CR>", "Previous buffer")
map("n", "<S-l>", "<cmd>bnext<CR>", "Next buffer")
map("n", "<leader>bd", "<cmd>bdelete<CR>", "Delete buffer")

-- ---------- Quick save/quit ----------
map("n", "<leader>w", "<cmd>write<CR>", "Save")
map("n", "<leader>q", "<cmd>quit<CR>", "Quit")

-- ---------- Move lines up/down ----------
map("n", "<A-j>", "<cmd>m .+1<CR>==", "Move line down")
map("n", "<A-k>", "<cmd>m .-2<CR>==", "Move line up")
map("v", "<A-j>", ":m '>+1<CR>gv=gv", "Move selection down")
map("v", "<A-k>", ":m '<-2<CR>gv=gv", "Move selection up")

-- ---------- Better indenting in visual mode ----------
map("v", "<", "<gv", "Indent left (keep selection)")
map("v", ">", ">gv", "Indent right (keep selection)")

-- ---------- Reload config ----------
map("n", "<leader>R", "<cmd>source $MYVIMRC<CR>", "Reload init.lua")

