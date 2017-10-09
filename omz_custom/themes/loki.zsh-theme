# LOKI - custom zsh theme based upon aussiegeek and crunch

LOKI_BRACE_COLOR="%{$fg_bold[blue]%}"
LOKI_TIME_COLOR="%{$fg[green]%}"
LOKI_USER_HOST_COLOR="%{$fg[yellow]%}"
LOKI_DIR_COLOR="%{$fg[cyan]%}"
LOKI_GIT_BRANCH_COLOR="%{$fg_bold[green]%}"
LOKI_GIT_TAG_COLOR="%{$fg[magenta]%}"
LOKI_GIT_TAG_AHEAD_COLOR="%{$fg_bold[red]%}"
LOKI_GIT_CLEAN_COLOR="%{$fg_bold[green]%}"
LOKI_GIT_DIRTY_COLOR="%{$fg_bold[red]%}"

ZSH_THEME_GIT_PROMPT_PREFIX="$LOKI_GIT_BRANCH_COLOR"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_CLEAN=" $LOKI_GIT_CLEAN_COLOR✓"
ZSH_THEME_GIT_PROMPT_DIRTY=" $LOKI_GIT_DIRTY_COLOR✗"

LOKI_TIME_="$LOKI_BRACE_COLOR"["$LOKI_TIME_COLOR%t$LOKI_BRACE_COLOR"]"%{$reset_color%}"
LOKI_USER_HOST_DIR_="$LOKI_BRACE_COLOR"["$LOKI_USER_HOST_COLOR%n@%m%{$reset_color%}:$LOKI_DIR_COLOR%~$LOKI_BRACE_COLOR"]"%{$reset_color%}"
LOKI_GIT_="\$(git_prompt_info) $LOKI_GIT_TAG_COLOR\$(git_current_tag) $LOKI_GIT_TAG_AHEAD_COLOR\$(git_commits_ahead_of_tag)%{$reset_color%}"

PROMPT="$LOKI_TIME_ $LOKI_USER_HOST_DIR_ $LOKI_GIT_%{$reset_color%}
$ "
