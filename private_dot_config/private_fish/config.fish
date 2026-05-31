# ============================================================
# Fish Shell Configuration
# ============================================================

# ============================================================
# PATH
# ============================================================
# Ensure user-local binaries are on PATH *before* the tool inits below.
# starship, atuin, mise, chezmoi, etc. install into ~/.local/bin. In a
# login + interactive shell, fish's own ~/.local/bin handling runs only
# after this file is sourced, so `starship init` (etc.) would otherwise
# fail with "command not found" at startup. Add it explicitly, up front.
fish_add_path -g $HOME/.local/bin

# Interactive session setup
if status is-interactive
    # Disable the default greeting
    set -g fish_greeting

    # Starship prompt
    starship init fish | source

    # zoxide — smarter cd (use `z <partial>` to jump to frecent dirs)
    zoxide init fish | source

    # atuin — shell history on steroids (Ctrl+R for fuzzy search)
    atuin init fish | source
end

# ============================================================
# Environment Variables
# ============================================================
set -gx COLORTERM truecolor
set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx LANG en_US.UTF-8
set -gx LC_ALL en_US.UTF-8
set -gx HOMEBREW_NO_ENV_HINTS 1

# bat — use Gruvbox theme
set -gx BAT_THEME "gruvbox-dark"

# ============================================================
# Tool Activation
# ============================================================

# mise-en-place — version manager for dev tools
$HOME/.local/bin/mise activate fish | source

