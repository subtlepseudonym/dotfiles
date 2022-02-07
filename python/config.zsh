PYENV_ROOT="${HOME}/workspace/git/pyenv/pyenv"

if [[ -f "${PYENV_ROOT}/bin/pyenv" ]]; then
	path=("${PYENV_ROOT}/bin" "${path[@]}")

	export PYENV_ROOT
	eval "$(pyenv init --path)"
	eval "$(pyenv init -)"
fi

if [[ -f "${PYENV_ROOT}/plugins/pyenv-virtualenv" ]]; then
	eval "$(pyenv virtualenv-init -)"
fi
