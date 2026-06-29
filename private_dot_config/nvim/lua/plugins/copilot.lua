return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter", -- load when you start typing
    opts = {
      -- Show suggestions as virtual ghost text (the main UX)
      suggestion = {
        enabled = true,
        auto_trigger = true, -- show suggestions automatically as you type
        debounce = 75,        -- ms to wait after keystroke before requesting
        keymap = {
          accept = "<Tab>",
          accept_word = false,
          accept_line = false,
          next = "<M-]>",      -- Alt + ]
          prev = "<M-[>",      -- Alt + [
          dismiss = "<C-]>",   -- Ctrl + ]
        },
      },
      -- Disable the panel UI (we're using inline suggestions only)
      panel = { enabled = false },
      -- Filetypes—disable for prose, enable for code/config
      filetypes = {
        markdown = false,       -- disabled for prose
        gitcommit = false,      -- let me write my own commit messages
        gitrebase = false,
        hgcommit = false,
        svn = false,
        cvs = false,
        ["."] = false,          -- disable for dotfiles without extension
        -- Enable for everything else
        ["*"] = true,
      },
    },
  },
}

