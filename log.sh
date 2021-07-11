import "./datetime.sh"

# $1: log msg type
# $2: log msg body
log() {
	type="$(echo $1 | tr '[:lower:]' '[:upper:]')"
	echo "[$(datetime)][${type}] $2 (test)"
}
