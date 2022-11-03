export COMPOSE_MANIFEST_PATH="${HOME}/workspace/manifest/compose"
mkdir -p "${COMPOSE_MANIFEST_PATH}"

compdef _dcf dcf
