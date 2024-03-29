# Files
[[ "$(uname)" == "Darwin" ]] && alias ls="ls -G"
[[ "$(uname)" == "Linux"  ]] && alias ls="ls --color"
alias la="ls -a"
alias ll="ls -la"
alias lh="ls -lah"
alias rga="rg --files --hidden"
alias cdw="cd ~/workspace"

# Micro-scripts
alias jq-prune="jq -R -r 'try fromjson'"
alias jq-safe="jq -R -r '. as \$line | try fromjson catch \$line'"
alias pubip="curl 'https://api.ipify.org'"
alias reload-alias='echo "$(find ~/.dotfiles -type f -name alias.zsh)" "\n${HOME}/.localrc" | while read f; do source "$f"; done'
alias swaplist="ls '${HOME}/.vim/tmp/swpdir' | sed 's!.*/!!; s!%!/!g' | sort"
alias sl=swaplist
alias trim="awk '{ gsub(/^[ \t]+|[ \t]+$/, \"\"); print }'"
alias udate="date +%s"
alias tvsort="sed -e 's/^\(.*\)\(s[0-9]\+e[0-9]\+\)\(.*\)/\2#\3#\1/' | sort | sed -e 's/^\(.*\)#\(.*\)#\(.*\)/\3\1\2/'"
alias whitespace="sed 's/ /·/g;s/\t/￫/g;s/\r/§/g;s/$/¶/g'"
alias ffprobe="ffprobe -hide_banner"
