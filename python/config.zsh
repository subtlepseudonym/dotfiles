PYENV_ROOT="${HOME}/.pyenv"

if [[ -f "$(command -v pyenv)" || -f "${PYENV_ROOT}/bin/pyenv" ]]; then
	if [[ -f "${PYENV_ROOT}/bin/pyenv" ]]; then
		path=("${PYENV_ROOT}/bin" "${path[@]}")
		path=("${PYENV_ROOT}/shims" "${path[@]}")
	fi

	export PYENV_ROOT
	eval "$(pyenv init -)"
fi

if [[ -f "${PYENV_ROOT}/plugins/pyenv-virtualenv" ]]; then
	eval "$(pyenv virtualenv-init -)"
fi
