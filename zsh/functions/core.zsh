# Core utility functions.

mkcd() {
  [[ $# -eq 1 ]] || { echo "Usage: mkcd <directory>"; return 1; }
  mkdir -p -- "$1" && cd -- "$1"
}

mcd() {
  mkcd "$@"
}

mkdirs() {
  [[ $# -ge 1 ]] || { echo "Usage: mkdirs <dir1> [dir2 ... dirN]"; return 1; }
  mkdir -p -- "$@" || return 1
  cd -- "${@: -1}"
}

back() {
  cd - >/dev/null || return 1
}

up() {
  local levels="${1:-1}"
  [[ "$levels" == <-> ]] || { echo "Usage: up [number_of_levels]"; return 1; }

  local path=""
  local i
  for ((i = 0; i < levels; i++)); do
    path+="../"
  done
  cd -- "$path"
}

cdg() {
  [[ $# -eq 1 ]] || { echo "Usage: cdg <pattern>"; return 1; }
  command -v fd >/dev/null 2>&1 || { echo "cdg requires: fd"; return 127; }
  command -v fzf >/dev/null 2>&1 || { echo "cdg requires: fzf"; return 127; }

  local dir
  dir=$(fd -t d -- "$1" 2>/dev/null | fzf --preview 'ls -la --color=always {}' --preview-window=up:30%:wrap) || return 1
  [[ -n "$dir" ]] && cd -- "$dir"
}

sfile() {
  [[ $# -eq 1 ]] || { echo "Usage: sfile <pattern>"; return 1; }

  if command -v rg >/dev/null 2>&1; then
    rg --files | rg -i -- "$1"
  else
    find . -type f -iname "*$1*"
  fi
}

find_open() {
  [[ $# -eq 1 ]] || { echo "Usage: find_open <pattern>"; return 1; }

  local file
  file=$(find . -type f -iname "*$1*" 2>/dev/null | head -n 1)
  [[ -n "$file" ]] || { echo "No file found for: $1"; return 1; }

  if command -v xdg-open >/dev/null 2>&1; then
    xdg-open "$file" >/dev/null 2>&1 & disown
  else
    echo "$file"
  fi
}

showaliases() {
  alias
}

showfunctions() {
  declare -f
}