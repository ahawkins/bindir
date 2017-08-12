# Run hook for per-directory env variables
if command -sq direnv
	# Shutup direnv
	set -x DIRENV_LOG_FORMAT ""

	eval (direnv hook fish)
end
