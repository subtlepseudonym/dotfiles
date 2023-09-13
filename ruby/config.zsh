# rbenv may be in ~/.rbenv/bin or /opt/homebrew/bin
[[ -d "${HOME}/.rbenv/bin" ]] && path=("${HOME}/.rbenv/bin" "${path[@]}")
[[ -f "$(command -v rbenv)" ]] && eval "$(rbenv init - zsh)"

# need to brew install libpq separately on apple m2 chip
# this allows the arm64 headers for the pg lib to link properly
[[ -d "/opt/homebrew/opt/libpq" ]] && path=("/opt/homebrew/opt/libpq/bin" "${path[@]}")
