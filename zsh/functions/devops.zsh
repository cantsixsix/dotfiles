# Development and system helper functions.

_require_cmd() {
  command -v "$1" >/dev/null 2>&1 || { echo "Missing command: $1"; return 127; }
}

myip() {
  _require_cmd curl || return 127
  curl -fsSL https://api.ipify.org && echo
}

iphj() {
  _require_cmd curl || return 127
  local ip="${1:-$(myip)}"
  curl -fsSL "https://api.db-ip.com/v2/free/$ip"
  echo
}

checkport() {
  [[ $# -eq 2 ]] || { echo "Usage: checkport <host> <port>"; return 1; }
  _require_cmd nc || return 127
  nc -zv -- "$1" "$2"
}

connectssh() {
  [[ $# -eq 2 ]] || { echo "Usage: connectssh <user> <host>"; return 1; }
  ssh "$1@$2"
}

matar() {
  [[ $# -ge 1 ]] || { echo "Usage: matar <pattern>"; return 1; }
  pkill -f -- "$*"
}

update_system() {
  sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y
}

gpush() {
  git rev-parse --is-inside-work-tree >/dev/null 2>&1 || { echo "Not inside a git repository."; return 1; }

  local commit_message
  if [[ $# -eq 0 ]]; then
    read "commit_message?Commit message: "
    [[ -n "$commit_message" ]] || { echo "Commit message is required."; return 1; }
  else
    commit_message="$*"
  fi

  git add --all || return 1
  git diff --cached --quiet && { echo "No staged changes to commit."; return 0; }

  git commit -m "$commit_message" || return 1
  git push
}

docker_status() {
  _require_cmd docker || return 127
  docker info >/dev/null 2>&1 && echo "Docker is running." || echo "Docker is not running."
}

docker_cleanup() {
  _require_cmd docker || return 127
  docker system prune -af --volumes
}

docker_compose_up() {
  [[ $# -ge 1 ]] || { echo "Usage: docker_compose_up <service> [service ...]"; return 1; }
  _require_cmd docker || return 127
  docker compose up -d -- "$@"
}

runjs() {
  [[ $# -eq 1 ]] || { echo "Usage: runjs <file.js>"; return 1; }
  _require_cmd node || return 127
  node -- "$1"
}

rungo() {
  [[ $# -eq 1 ]] || { echo "Usage: rungo <file.go>"; return 1; }
  _require_cmd go || return 127
  go run -- "$1"
}

python_server() {
  local port="${1:-8000}"
  [[ "$port" == <-> ]] || { echo "Usage: python_server [port]"; return 1; }
  _require_cmd python3 || return 127
  python3 -m http.server "$port"
}
