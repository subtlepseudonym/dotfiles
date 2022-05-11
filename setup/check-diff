#! /bin/bash

if [[ "$(basename $(pwd))" != "dotfiles" ]]; then
	echo "Must be run from dotfiles repo root dir"
	exit 1
fi

working_dir="$(pwd)"
home_dotfiles="${HOME}/.dotfiles"
workspace_scripts="${HOME}/workspace/script"
home_scripts="${HOME}/script"

print_diff() {
	if [[ -f "${2}" ]]; then
		echo "${1#"${working_dir}"}"
		git diff -- "${2}" "${1}"
	else
		echo "${1#"${working_dir}"} - not installed"
	fi
}

for f in $(find "${working_dir}" -mindepth 2 -maxdepth 2 -type f -not -path '*.git/*' -and -not -path '*setup/*' | sort)
do
	if [[ "${f}" =~ .+\.script ]]; then
		if [[ -d "${workspace_scripts}" ]]; then
			print_diff "${f}" "${workspace_scripts}/$(basename ${f%'.script'})"
		else
			print_diff "${f}" "${home_scripts}/$(basename ${f%'.script'})"
		fi
	else
		print_diff "${f}" "${home_dotfiles}/${f#"${working_dir}"}"
	fi
done
