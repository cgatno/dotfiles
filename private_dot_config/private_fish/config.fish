# ============================================================
# Fish Shell Configuration
# ============================================================

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

