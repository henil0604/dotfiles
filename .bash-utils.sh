export BASH_MODULES="$HOME/.modules"

file_exists() {
  if [ -f "$1" ] || [ -L "$1" ]; then
	return 0
  else
	return 1
  fi
}

directory_exists() {
  if [ -d "$1" ] || [ -L "$1" ]; then
	return 0
  else
	return 1
  fi
}

entity_exists() {
  if directory_exists "$1" || file_exists "$1"; then
	return 0
  else
	return 1
  fi
}

source_if_exists() {
  if file_exists $1; then
	source "$1"
  fi
}

load_module(){
	FILE="$BASH_MODULES/$1.sh"
	if file_exists $FILE; then
		source_if_exists $FILE
	fi
}