#!/usr/bin/env bash
. "$(command -v import)"

import "awinecki/shtools/aws.sh@0.0.2"

# The URL is downloaded once, cached forever, and then sourced
# import "https://git.io/fAWiz"

aws_regions
# 42
