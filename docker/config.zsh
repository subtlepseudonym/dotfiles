export COMPOSE_MANIFEST_PATH="${HOME}/workspace/manifest/compose"
mkdir -p "${COMPOSE_MANIFEST_PATH}"

# completion for dcf script
compdef "_arguments \"1:file:_path_files -W ${COMPOSE_MANIFEST_PATH}/ -g '*.yaml'\"" dcf
