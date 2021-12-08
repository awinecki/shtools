# Colors - https://robotmoon.com/256-colors/
# tput - https://linuxcommand.org/lc3_adv_tput.php

NO_COLOR=${NO_COLOR:-}

if [[ -z $NO_COLOR ]]; then
	black=$(tput setaf 0)
	red=$(tput setaf 1)
	green=$(tput setaf 2)
	yellow=$(tput setaf 3)
	blue=$(tput setaf 4)
	magenta=$(tput setaf 5)
	cyan=$(tput setaf 6)
	white=$(tput setaf 7)

	bgblack=$(tput setab 0)
	bgred=$(tput setab 1)
	bggreen=$(tput setab 2)
	bgyellow=$(tput setab 3)
	bgblue=$(tput setab 4)
	bgmagenta=$(tput setab 5)
	bgbgcyan=$(tput setab 6)
	bgwhite=$(tput setab 7)

	bold=$(tput bold)
	underline=$(tput smul)
	nounderline=$(tput rmul)
	reverse=$(tput rev)
	standout=$(tput smso)
	nostandout=$(tput rmso)

	reset=$(tput sgr0)
else
	black=""
	red=""
	green=""
	yellow=""
	blue=""
	magenta=""
	cyan=""
	white=""

	bgblack=""
	bgred=""
	bggreen=""
	bgyellow=""
	bgblue=""
	bgmagenta=""
	bgbgcyan=""
	bgwhite=""

	bold=""
	underline=""
	nounderline=""
	reverse=""
	standout=""
	nostandout=""

	reset=""
fi
