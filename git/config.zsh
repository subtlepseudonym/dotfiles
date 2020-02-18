zstyle ':completion:*:*:git:*' script "${ZSH}/git/git-completion.bash"
fpath=("${ZSH}/git" ${fpath})
