export PLAYDATE_SDK_PATH="${HOME}/Developer/PlaydateSDK"

path=(
	"${PLAYDATE_SDK_PATH}/bin"
	"/opt/homebrew/bin"
	"${path[@]}"
)
