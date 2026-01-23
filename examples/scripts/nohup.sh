(
	if [ -t 1 ]; then
		exec 1>>nohup.out || exec 1>>~/nohup.out
	fi
	if [ -t 2 ]; then
		exec 2>&1
	fi

	trap '' SIGHUP

	exec "$@"
)
