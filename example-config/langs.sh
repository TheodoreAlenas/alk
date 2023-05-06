# shellcheck disable=SC2154
# shellcheck disable=SC2016

fn=c_dfr+copy+c:"$fn"
fn_c_dfr() {
  case "$act" in
    script)
      printf "for (int i = 0; i < %s; i++) {\n" "$1"
      printf "  for (int j = 0; j < %s; j++) {\n" "$2"
      printf "  }\n}\n"
      ;;
    descr) printf 'Nested for loops\n' ;;
    color) printf "sed '%s'\n" 's/\(. < .*\);/\nattention\n\1\nnormal\n;/' ;;
    arg1) printf "get-line\nmax i" ;;
    arg2) printf "get-line\nmax j" ;;
  esac
}

fn=sh_sd+copy+sh:"$fn"
fn_sh_sd() {
  case "$act" in
    script) printf '# shellcheck disable=SC2154\n' ;;
  esac
}

