# Outputs the current tag if one exists
function git_current_tag() {
	local ref
	ref=$(command git describe --tags --abbrev=0 2> /dev/null)
	local ret=$?
	[[ $ret != 0 ]] && return # lazy
	echo $(echo "($ref)" | tr -d "\n")
}

# Outputs the number of commits ahead of the latest tag
function git_commits_ahead_of_tag() {
	local ref
	ref=$(command git describe --long 2> /dev/null)
	local ret=$?
	[[ $ret != 0 ]] && return
	echo $(echo $ref | cut -f 2 -d "-")
}
