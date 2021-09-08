#!/usr/bin/env bash
# import ../validate.sh || source $(dirname "$0")/../validate.sh
. "$(command -v import)"
[[ -n $LOCAL ]] && source $(dirname $0)/../validate.sh || import ../validate.sh
# [[ -n $LOCAL ]] && source $(dirname $0)/../log.sh || import ../log.sh

function aws_regions() { set -e
  # log info "listing aws regions.."
  binary_exists aws
	aws ec2 describe-regions --region us-east-1 --output text | cut -f4
  # log info "done!"
  echo "DONE"
}

aws_regions
