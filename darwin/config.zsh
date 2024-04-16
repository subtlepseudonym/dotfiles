export PLAYDATE_SDK_PATH="${HOME}/Developer/PlaydateSDK"

eval $(/opt/homebrew/bin/brew shellenv)

path=(
	"${PLAYDATE_SDK_PATH}/bin"
	"${path[@]}"
)
