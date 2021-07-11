# source "./datetime.sh"
import "./datetime.sh"

log() {
	type="$(echo $1 | tr '[:lower:]' '[:upper:]')"
	echo "[$(datetime)][${type}] $2"
}
