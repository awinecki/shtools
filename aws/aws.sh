#!/usr/bin/env import
import ../validate.sh


function aws_regions() { set -e
  binary_exists aws
	aws ec2 describe-regions --region us-east-1 --output text | cut -f4
}

aws_regions
