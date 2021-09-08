#!/usr/bin/env bash
function get() { set -e; dep=$1; [[ -n $LOCAL ]] && source $(dirname $0)/$dep || import $dep; } ; . "$(command -v import)";

get ./validate.sh
get ./log.sh

function aws_regions() { set -e
  log info "listing aws regions.."
  binary_exists aws
	aws ec2 describe-regions --region us-east-1 --output text | cut -f4
  log info "done!"
  log warn "ITS WORKING!!!"
  echo "DONE"
}

aws_regions
