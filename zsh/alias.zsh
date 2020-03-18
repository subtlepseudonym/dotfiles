# Files
alias ls="ls --color"
alias la="ls -a"
alias ll="ls -la"
alias lh="ls -lah"
alias rga="rg --files --hidden"

# Shortened commands
alias dcc="docker-prune-containers"
alias dci="docker-prune-images"

# Micro-scripts
alias jq-safe="jq -R -r '. as \$line | try fromjson catch \$line'"
alias jq-prune="jq -R -r 'try fromjson'"
alias trim="awk '{ gsub(/^[ \t]+|[ \t]+$/, \"\"); print }'"
alias swaplist="basename -a \"$(ls "${HOME}/.vim/tmp/swpdir")\" | sed 's#%#/#g' | sort"
alias sl=swaplist
alias udate="date +%s"
alias pubip="curl 'https://api.ipify.org'"
