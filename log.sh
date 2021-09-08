#!/usr/bin/env bash
function get() { set -e; dep=$1; [[ -n $LOCAL ]] && source $(dirname $0)/$dep || import $dep; } ; . "$(command -v import)";

get ./datetime.sh

# $1: log msg type
# $2: log msg body
log() {
	type="$(echo $1 | tr '[:lower:]' '[:upper:]')"
	echo "[$(datetime)][${type}] $2"
}
