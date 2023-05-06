# shellcheck disable=SC2154
# shellcheck disable=SC2016

fn=dfh+key+alias:"$fn"
fn_dfh() {
  case "$act" in
    script) printf "%s\n" 'df -h | awk "/\/\$/{print \$(NF - 1)}"' ;;
    descr) printf "Percentage of memory, how full it is.\n" ;;
  esac
}

fn=vi+alias:"$fn"
fn_vi() {
  case "$act" in
    script) printf "nvim\n" ;;
  esac
}

