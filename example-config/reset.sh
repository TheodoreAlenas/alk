# shellcheck disable=SC2154
# shellcheck disable=SC2016

fn=r_wif+key+is-e-r+key-term:"$fn"
fn_r_wif() {
  case "$act" in
    script) printf 'sudo systemctl restart NetworkManager\n' ;;
    descr) cat <<EOM
Also consider  sudo nmtui  because it's a little overkill.
EOM
    ;;
  esac
}

fn=powff+key+is-e-q+key-term:"$fn"
fn_powff() {
  case "$act" in
    script) printf 'sudo shutdown %s\n' "$1" ;;
    descr) cat <<EOM
systemd command,  poweroff  is an alias to  shutdown now
EOM
    ;;
    arg1) printf "recommend\nnow\n+1\n+5\n+30\n23:59\n02:00\n" ;;
  esac
}

