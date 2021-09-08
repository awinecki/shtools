#!/usr/bin/env bash
[ "$(uname -s)" = "Darwin" ] && __i="$HOME/Library/Caches" || __i="$HOME/.cache" && __i="${IMPORT_CACHE:-${XDG_CACHE_HOME:-${LOCALAPPDATA:-${__i}}}/import.sh}/import" && [ -r "$__i" ] || curl -sfLSo "$__i" --create-dirs https://import.sh && . "$__i" && unset __i; function get() { set -e; dep=$1; [[ -n $LOCAL ]] && source $(dirname $0)/$dep || import $dep; }

get ./validate.sh
get ./log.sh

function aws_regions() { set -e
  binary_exists aws
	aws ec2 describe-regions --output text | cut -f4
}

function list_ec2_in_all_regions() { set -e
  binary_exists aws jq
  for region in $(aws_regions); do
    log info "Listing ec2 instances in region $region.."
    aws ec2 describe-instances --region $region \
      | jq '.Reservations[].Instances[].Tags[] | select(.Key == "Name") | .Value'
    echo "\n"
  done
}
