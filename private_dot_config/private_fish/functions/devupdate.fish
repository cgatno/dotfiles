function devupdate --description "Update brew, mise, and fisher packages"
    echo "🍺 Updating Homebrew..."
    brew update
    brew upgrade
    brew cleanup

    echo "🔧 Updating mise..."
    mise self-update -y
    mise upgrade

    echo "🐟 Updating Fisher plugins..."
    fisher update
end

