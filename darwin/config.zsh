export PLAYDATE_SDK_PATH="${HOME}/Developer/PlaydateSDK"

eval $(/opt/homebrew/bin/brew shellenv)

if [[ -f "$(which go)" ]]; then
	export GOROOT=$(dirname $(dirname $(readlink -f $(which go))))
fi

path=(
	"${PLAYDATE_SDK_PATH}/bin"
	"${path[@]}"
)
