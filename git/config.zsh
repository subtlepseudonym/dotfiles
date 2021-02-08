zstyle ':completion:*:*:git:*' script "${DOTFILES}/git/git-completion.bash"
fpath=("${DOTFILES}/git" ${fpath})
