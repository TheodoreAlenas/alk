# shellcheck disable=SC2154
# shellcheck disable=SC2016

fn=pigh+key+dev:"$fn"
fn_pigh() {
  case "$act" in
    script) printf 'timeout %s ping github.com\n' "$1" ;;
    descr) printf 'Check internet connection\n' ;;
    arg1) printf "recommend\n3s\n10s\n30s\n" ;;
    color) printf "sed '%s'\n" 's/ping/\nattention\nping\nnormal\n/' ;;
  esac
}

fn=echh+key:"$fn"
fn_echh() {
  case "$act" in
    script) printf 'echo %s\n' "$1" ;;
    arg1) printf "get-line\nWhat should be echoed\n" ;;
    descr) printf 'For testing purposes\n' ;;
    color) printf "sed '%s'\n" 's/echo/\nsecondary\necho\nnormal\n/' ;;
  esac
}

fn=eche+key:"$fn"
fn_eche() {
  case "$act" in
    script) printf "%s\n" '(echo error >&2; exit 1)' ;;
    color) printf "sed '%s'\n" 's/error/\nattention\nerror\nnormal\n/' ;;
  esac
}

