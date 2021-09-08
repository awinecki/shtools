#!/usr/bin/env bash
. "$(command -v import)"
# import "./datetime.sh"
[[ -n $LOCAL ]] && source ./$(dirname $0)/datetime.sh || import ./datetime.sh

# $1: log msg type
# $2: log msg body
log() {
	type="$(echo $1 | tr '[:lower:]' '[:upper:]')"
	echo "[$(datetime)][${type}] $2"
}
