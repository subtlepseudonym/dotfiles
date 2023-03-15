# used in _dcf completion
export MANIFEST_COMPOSE_PATH="${workspace}/manifest/compose"
mkdir -p "${MANIFEST_COMPOSE_PATH}"

compdef _dcf dcf
