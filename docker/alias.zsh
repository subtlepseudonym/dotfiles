alias dcc="docker-prune-containers"
alias dci='docker rmi $(docker images -f "dangling=true" -q)'
alias dcl="docker compose ls --all"
alias dps="docker ps -a --format 'table {{.ID}}\t{{.Image}}\t{{.RunningFor}}\t{{.Status}}\t{{.Names}}'"
alias dpsa="docker ps -a"
alias dports="docker ps -a --format 'table {{.ID}}\t{{.Names}}\t{{.Ports}}'"
