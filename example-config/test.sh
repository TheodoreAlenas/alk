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

fn=t_bat+key:"$fn"
fn_t_bat() {
  case "$act" in
    script) printf 'alm-battery -c %s\n' "$1" ;;
    color) printf "sed 's/-c/\\nattention\\n-c/'\n" ;;
    arg1) printf "recommend\n0\n1\n20\n40\n80\n90\n99\n100\n" ;;
    descr)
      cat <<EOM
Try out different 'capacity' levels of the battery.

> alm-battery --help
$(alm-battery --help)
EOM
    ;;
  esac
}

fn=t_fas+key+is-f:"$fn"
fn_t_fas() {
  case "$act" in
    script) printf "%s\n" 'alc-test fast' ;;
    color) printf "sed '%s'\n" 's/test/\nattention\ntest\nnormal\n/' ;;
    descr)
      cat <<EOM
> alc-test --help
$(alc-test --help)

Run tests made for the superficial elements I make.
Adapters aren't tested typically, but there are a few scripts with
logic in them. Also some can cause a big mess if they don't work
right. As of now, April 2023, they're in ~/code/sys/tests and hard
linked to ~/.local/albin with names like test-*

> grep test -B 2 -A 4 ~/code/sys/Makefile
$(grep test -B 2 -A 4 ~/code/sys/Makefile)
EOM
    ;;
  esac
}

fn=t_sys+key:"$fn"
fn_t_sys() {
  case "$act" in
    script) printf 'alc-test\n' ;;
    descr)
      cat <<EOM
> alc-test --help
$(alc-test --help)

Run tests made for the superficial elements I make.
Adapters aren't tested typically, but there are a few scripts with
logic in them. Also some can cause a big mess if they don't work
right. As of now, April 2023, they're in ~/code/sys/tests and hard
linked to ~/.local/albin with names like test-*

> grep test -B 2 -A 4 ~/code/sys/Makefile
$(grep test -B 2 -A 4 ~/code/sys/Makefile)
EOM
    ;;
  esac
}

fn=t_snp+key:"$fn"
fn_t_snp() {
  case "$act" in
    script) printf 'test-snippet\n' ;;
    descr)
      cat <<EOM
Test alm-snippet (the program with the fewer dependencies).
It's not at all a proof things work right.
EOM
    ;;
  esac
}

fn=echo+key:"$fn"
fn_echo() {
  case "$act" in
    script) printf 'echo hi\n' ;;
    descr) printf 'For testing purposes\n' ;;
  esac
}

fn=echh+key:"$fn"
fn_echh() {
  case "$act" in
    script) printf 'echo hi\n' ;;
    color) printf "sed 's/hi/\\nattention\\nhi/'\n" ;;
    descr) printf 'For testing purposes\n' ;;
  esac
}

fn=eche+key:"$fn"
fn_eche() {
  case "$act" in
    script) printf "%s\n" '(echo error >&2; exit 1)' ;;
    color) printf "sed '%s'\n" 's/error/\nattention\nerror\nnormal\n/' ;;
  esac
}

fn=vars+key+is-v-v:"$fn"
fn_vars() {
  case "$act" in
    script) printf 'alc-memory permanent get-all\n' ;;
    descr) alc-memory --help ;;
  esac
}

