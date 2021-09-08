#!/usr/bin/env bash
. "$(command -v import)"; function get() { set -e; dep=$1; [[ -n $LOCAL ]] && source $(dirname $0)/$dep || import $dep; }

get ./datetime.sh
get ./colors.sh

# $1: log msg type
# $2: log msg body
log() {
	local type="$(echo $1 | tr '[:lower:]' '[:upper:]')"
  if [[ $type = "INFO" ]]; then
    local msg_color=$blue
  elif [[ $type = "WARN" ]]; then
    local msg_color=$yellow
  elif [[ $type = "ERR" ]]; then
    local msg_color=$red
  else
    local msg_color=""
  fi
	echo "${msg_color}[$(datetime)][${type}] $2${reset}"
}
