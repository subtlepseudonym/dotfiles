# used in _git_update_all compl
export WORKSPACE_GIT_PATH="${workspace}/git"

zstyle ':completion:*:*:git:*' script "${DOTFILES}/git/git-completion.bash"
fpath=(
	"${DOTFILES}/git"
	${fpath}
)
