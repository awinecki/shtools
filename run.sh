# Testing utility
# e.g. ./run.sh heroku heroku_dev_servers

function main() { set -e
  file=$1
  func=$2
  params=${@:3}
  # Example: ./fn.sh fnname
  source ./$file.sh
  $func $params
}

# ----------------- Main run ---------------------
main "$@"
