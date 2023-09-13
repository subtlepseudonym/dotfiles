[[ -f "$(command -v rbenv)" ]] && eval "$(rbenv init - zsh)"

# need to brew install libpq separately on apple m2 chip
[[ -d "/opt/homebrew/opt/libpq" ]] && path=("/opt/homebrew/opt/libpq/bin" "${path[@]}")
