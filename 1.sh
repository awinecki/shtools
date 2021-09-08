#!/usr/bin/env bash
. "$(command -v import)"

import "awinecki/shtools/aws/aws.sh"

# The URL is downloaded once, cached forever, and then sourced
# import "https://git.io/fAWiz"

aws_regions
# 42
