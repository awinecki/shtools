#!/usr/bin/env bash
# import ../validate.sh || source $(dirname "$0")/../validate.sh
. "$(command -v import)"
[[ -n $LOCAL ]] && source $(dirname $0)/../validate.sh || import ../validate.sh

function aws_regions() { set -e
  binary_exists aws
	aws ec2 describe-regions --region us-east-1 --output text | cut -f4
}

aws_regions
