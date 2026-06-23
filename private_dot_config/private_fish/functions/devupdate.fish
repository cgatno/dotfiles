function devupdate --description "Update brew, mise, and fisher packages"
    echo "🍺 Updating Homebrew..."
    brew update
    brew upgrade -y
    brew cleanup

    echo "🔧 Updating mise..."
    # mise-en-place installed via Homebrew doesn't support self-update
    # mise self-update -y
    mise upgrade

    echo "🐟 Updating Fisher plugins..."
    fisher update

    echo "🤖 Updating Claude Code..."
    claude update

    echo "📝 Updating lazy.nvim..."
    nvim --headless "+Lazy! sync" +qa
end

