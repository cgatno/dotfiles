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
    mise self-update -y
    mise upgrade

    echo "🐟 Updating Fisher plugins..."
    fisher update
end
