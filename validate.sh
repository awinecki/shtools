function binary_exists() {
  for cmd in $@; do
    if ! command -v $cmd &> /dev/null
      then
        echo "[ERR] Command $cmd could not be found!"
      exit 1
    fi
  done
}
