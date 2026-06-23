function devupdate --description "Update system packages, mise, and fisher"
    # Use whichever system package manager is present: Homebrew on macOS
    # (or Linuxbrew), apt on Debian/Ubuntu.
    if type -q brew
        echo "🍺 Updating Homebrew..."
        brew update
        brew upgrade
        brew cleanup
    else if type -q apt
        echo "📦 Updating apt packages..."
        sudo apt update
        sudo apt upgrade -y
        sudo apt autoremove -y
    else
        echo "⚠️  No known system package manager (brew/apt) found; skipping."
    end

    echo "🔧 Updating mise..."
    # Only run mise self-update if installed via the self-installer
    # (Homebrew-installed mise doesn't support self-update)
    if string match "$HOME/.local/bin/mise" (command -v mise) >/dev/null 2>&1
        mise self-update -y
    end
    mise upgrade

    echo "🐟 Updating Fisher plugins..."
    fisher update

    # Optional: only run if the command exists
    if type -q claude
        echo "🤖 Updating Claude CLI..."
        claude update
    end

    # Optional: only run if neovim is available
    if type -q nvim
        echo "📝 Updating lazy.nvim..."
        if nvim --headless "+Lazy! sync" +qa >/dev/null 2>&1
            echo "📝 lazy.nvim: plugins updated (no output shown)"
        else
            echo "📝 lazy.nvim: update failed — run 'nvim --headless \"+Lazy! sync\" +qa' to see details"
        end
    end
end

