# pyenv may be installed in ~/.pyenv/bin
[[ -d "${HOME}/.pyenv/bin" ]] && path=("${HOME}/.pyenv/bin" "${path[@]}")
if [[ -f "$(command -v pyenv)" ]]; then
	path=("${HOME}/.pyenv/shims" "${path[@]}")
	eval "$(pyenv init -)"
fi

if [[ -f "${HOME}/.pyenv/plugins/pyenv-virtualenv" ]]; then
	eval "$(pyenv virtualenv-init -)"
fi
