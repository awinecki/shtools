#!/usr/bin/env bash
. "$(command -v import)"
import "awinecki/shtools/log.sh@main"
import "awinecki/shtools/datetime.sh@main"

log err "oh no sth went wrong!"
log info "just a sample message"
log warn "WARNING!"

echo "Now is $(datetime)"
