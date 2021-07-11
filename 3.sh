#!/usr/bin/env bash

. "$(command -v import)"

import "awinecki/shtools/log.sh@e47e6c6"

log err "oh no sth went wrong!"
log info "just a sample message"
log warn "WARNING!"
