# Files
alias ls="ls --color"
alias la="ls -a"
alias ll="ls -la"
alias lh="ls -lah"
alias rga="rg --files --hidden"

# Docker
alias dcc="docker-prune-containers"
alias dci="docker-prune-images"
alias dps="docker ps -a --format 'table {{.ID}}\t{{.Image}}\t{{.RunningFor}}\t{{.Status}}\t{{.Names}}'"

# Micro-scripts
alias jq-prune="jq -R -r 'try fromjson'"
alias jq-safe="jq -R -r '. as \$line | try fromjson catch \$line'"
alias pubip="curl 'https://api.ipify.org'"
alias sl=swaplist
alias swaplist="basename -a \"$(ls "${HOME}/.vim/tmp/swpdir")\" | sed 's#%#/#g' | sort"
alias trim="awk '{ gsub(/^[ \t]+|[ \t]+$/, \"\"); print }'"
alias udate="date +%s"
