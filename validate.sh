function binary_exists() {
  cmd=$1
	if ! command -v $cmd &> /dev/null
		then
			echo "[ERR] Command $cmd could not be found!"
    exit
	fi
}

