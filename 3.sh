#!/usr/bin/env bash

. "$(command -v import)"

import "awinecki/shtools/log.sh@1e59caf"

log err "oh no sth went wrong!"
log info "just a sample message"
log warn "WARNING!"
