fn=wm_d1+key+is-1:"$fn"
fn_wm_d1() {
  case "$act" in
    script) printf "bspc desktop main --focus\n" ;;
    descr) printf "go to desktop 'main' (1)\n" ;;
    color) printf "sed '%s'\n" 's/main/\nattention\nmain\nnormal\n/' ;;
  esac
}
fn=wm_s1+key+is-shift-1:"$fn"
fn_wm_s1() {
  case "$act" in
    script) printf "bspc node @brother --to-desktop main\n" ;;
    descr) printf "move brother window to desktop 'main' (1)\n" ;;
    color) printf "sed '%s'\n" 's/main/\nattention\nmain\nnormal\n/' ;;
  esac
}
fn=wm_b1+key+is-control-1:"$fn"
fn_wm_b1() {
  case "$act" in
    script) printf "bspc node @main:/ --to-desktop focused\n" ;;
    descr) printf "bring windows from desktop 'main' (1)\n" ;;
    color) printf "sed '%s'\n" 's/main/\nattention\nmain\nnormal\n/' ;;
  esac
}
fn=wm_t1+key+is-alt-1:"$fn"
fn_wm_t1() {
  case "$act" in
    script) printf "bspc node --to-desktop main --follow\n" ;;
    descr) printf "travel with the window to the desktop 'main' (1)\n" ;;
    color) printf "sed '%s'\n" 's/main/\nattention\nmain\nnormal\n/' ;;
  esac
}
fn=wm_d2+key+is-2:"$fn"
fn_wm_d2() {
  case "$act" in
    script) printf "bspc desktop web --focus\n" ;;
    descr) printf "go to desktop 'web' (2)\n" ;;
    color) printf "sed '%s'\n" 's/web/\nattention\nweb\nnormal\n/' ;;
  esac
}
fn=wm_s2+key+is-shift-2:"$fn"
fn_wm_s2() {
  case "$act" in
    script) printf "bspc node @brother --to-desktop web\n" ;;
    descr) printf "move brother window to desktop 'web' (2)\n" ;;
    color) printf "sed '%s'\n" 's/web/\nattention\nweb\nnormal\n/' ;;
  esac
}
fn=wm_b2+key+is-control-2:"$fn"
fn_wm_b2() {
  case "$act" in
    script) printf "bspc node @web:/ --to-desktop focused\n" ;;
    descr) printf "bring windows from desktop 'web' (2)\n" ;;
    color) printf "sed '%s'\n" 's/web/\nattention\nweb\nnormal\n/' ;;
  esac
}
fn=wm_t2+key+is-alt-2:"$fn"
fn_wm_t2() {
  case "$act" in
    script) printf "bspc node --to-desktop web --follow\n" ;;
    descr) printf "travel with the window to the desktop 'web' (2)\n" ;;
    color) printf "sed '%s'\n" 's/web/\nattention\nweb\nnormal\n/' ;;
  esac
}
fn=wm_d3+key+is-3:"$fn"
fn_wm_d3() {
  case "$act" in
    script) printf "bspc desktop manual --focus\n" ;;
    descr) printf "go to desktop 'manual' (3)\n" ;;
    color) printf "sed '%s'\n" 's/manual/\nattention\nmanual\nnormal\n/' ;;
  esac
}
fn=wm_s3+key+is-shift-3:"$fn"
fn_wm_s3() {
  case "$act" in
    script) printf "bspc node @brother --to-desktop manual\n" ;;
    descr) printf "move brother window to desktop 'manual' (3)\n" ;;
    color) printf "sed '%s'\n" 's/manual/\nattention\nmanual\nnormal\n/' ;;
  esac
}
fn=wm_b3+key+is-control-3:"$fn"
fn_wm_b3() {
  case "$act" in
    script) printf "bspc node @manual:/ --to-desktop focused\n" ;;
    descr) printf "bring windows from desktop 'manual' (3)\n" ;;
    color) printf "sed '%s'\n" 's/manual/\nattention\nmanual\nnormal\n/' ;;
  esac
}
fn=wm_t3+key+is-alt-3:"$fn"
fn_wm_t3() {
  case "$act" in
    script) printf "bspc node --to-desktop manual --follow\n" ;;
    descr) printf "travel with the window to the desktop 'manual' (3)\n" ;;
    color) printf "sed '%s'\n" 's/manual/\nattention\nmanual\nnormal\n/' ;;
  esac
}
fn=wm_d4+key+is-4:"$fn"
fn_wm_d4() {
  case "$act" in
    script) printf "bspc desktop terminal --focus\n" ;;
    descr) printf "go to desktop 'terminal' (4)\n" ;;
    color) printf "sed '%s'\n" 's/terminal/\nattention\nterminal\nnormal\n/' ;;
  esac
}
fn=wm_s4+key+is-shift-4:"$fn"
fn_wm_s4() {
  case "$act" in
    script) printf "bspc node @brother --to-desktop terminal\n" ;;
    descr) printf "move brother window to desktop 'terminal' (4)\n" ;;
    color) printf "sed '%s'\n" 's/terminal/\nattention\nterminal\nnormal\n/' ;;
  esac
}
fn=wm_b4+key+is-control-4:"$fn"
fn_wm_b4() {
  case "$act" in
    script) printf "bspc node @terminal:/ --to-desktop focused\n" ;;
    descr) printf "bring windows from desktop 'terminal' (4)\n" ;;
    color) printf "sed '%s'\n" 's/terminal/\nattention\nterminal\nnormal\n/' ;;
  esac
}
fn=wm_t4+key+is-alt-4:"$fn"
fn_wm_t4() {
  case "$act" in
    script) printf "bspc node --to-desktop terminal --follow\n" ;;
    descr) printf "travel with the window to the desktop 'terminal' (4)\n" ;;
    color) printf "sed '%s'\n" 's/terminal/\nattention\nterminal\nnormal\n/' ;;
  esac
}
fn=wm_d5+key+is-5:"$fn"
fn_wm_d5() {
  case "$act" in
    script) printf "bspc desktop media --focus\n" ;;
    descr) printf "go to desktop 'media' (5)\n" ;;
    color) printf "sed '%s'\n" 's/media/\nattention\nmedia\nnormal\n/' ;;
  esac
}
fn=wm_s5+key+is-shift-5:"$fn"
fn_wm_s5() {
  case "$act" in
    script) printf "bspc node @brother --to-desktop media\n" ;;
    descr) printf "move brother window to desktop 'media' (5)\n" ;;
    color) printf "sed '%s'\n" 's/media/\nattention\nmedia\nnormal\n/' ;;
  esac
}
fn=wm_b5+key+is-control-5:"$fn"
fn_wm_b5() {
  case "$act" in
    script) printf "bspc node @media:/ --to-desktop focused\n" ;;
    descr) printf "bring windows from desktop 'media' (5)\n" ;;
    color) printf "sed '%s'\n" 's/media/\nattention\nmedia\nnormal\n/' ;;
  esac
}
fn=wm_t5+key+is-alt-5:"$fn"
fn_wm_t5() {
  case "$act" in
    script) printf "bspc node --to-desktop media --follow\n" ;;
    descr) printf "travel with the window to the desktop 'media' (5)\n" ;;
    color) printf "sed '%s'\n" 's/media/\nattention\nmedia\nnormal\n/' ;;
  esac
}
fn=wm_d6+key+is-6:"$fn"
fn_wm_d6() {
  case "$act" in
    script) printf "bspc desktop spotify --focus\n" ;;
    descr) printf "go to desktop 'spotify' (6)\n" ;;
    color) printf "sed '%s'\n" 's/spotify/\nattention\nspotify\nnormal\n/' ;;
  esac
}
fn=wm_s6+key+is-shift-6:"$fn"
fn_wm_s6() {
  case "$act" in
    script) printf "bspc node @brother --to-desktop spotify\n" ;;
    descr) printf "move brother window to desktop 'spotify' (6)\n" ;;
    color) printf "sed '%s'\n" 's/spotify/\nattention\nspotify\nnormal\n/' ;;
  esac
}
fn=wm_b6+key+is-control-6:"$fn"
fn_wm_b6() {
  case "$act" in
    script) printf "bspc node @spotify:/ --to-desktop focused\n" ;;
    descr) printf "bring windows from desktop 'spotify' (6)\n" ;;
    color) printf "sed '%s'\n" 's/spotify/\nattention\nspotify\nnormal\n/' ;;
  esac
}
fn=wm_t6+key+is-alt-6:"$fn"
fn_wm_t6() {
  case "$act" in
    script) printf "bspc node --to-desktop spotify --follow\n" ;;
    descr) printf "travel with the window to the desktop 'spotify' (6)\n" ;;
    color) printf "sed '%s'\n" 's/spotify/\nattention\nspotify\nnormal\n/' ;;
  esac
}
fn=wm_d7+key+is-7:"$fn"
fn_wm_d7() {
  case "$act" in
    script) printf "bspc desktop temporary --focus\n" ;;
    descr) printf "go to desktop 'temporary' (7)\n" ;;
    color) printf "sed '%s'\n" 's/temporary/\nattention\ntemporary\nnormal\n/' ;;
  esac
}
fn=wm_s7+key+is-shift-7:"$fn"
fn_wm_s7() {
  case "$act" in
    script) printf "bspc node @brother --to-desktop temporary\n" ;;
    descr) printf "move brother window to desktop 'temporary' (7)\n" ;;
    color) printf "sed '%s'\n" 's/temporary/\nattention\ntemporary\nnormal\n/' ;;
  esac
}
fn=wm_b7+key+is-control-7:"$fn"
fn_wm_b7() {
  case "$act" in
    script) printf "bspc node @temporary:/ --to-desktop focused\n" ;;
    descr) printf "bring windows from desktop 'temporary' (7)\n" ;;
    color) printf "sed '%s'\n" 's/temporary/\nattention\ntemporary\nnormal\n/' ;;
  esac
}
fn=wm_t7+key+is-alt-7:"$fn"
fn_wm_t7() {
  case "$act" in
    script) printf "bspc node --to-desktop temporary --follow\n" ;;
    descr) printf "travel with the window to the desktop 'temporary' (7)\n" ;;
    color) printf "sed '%s'\n" 's/temporary/\nattention\ntemporary\nnormal\n/' ;;
  esac
}
fn=vol0+key+is-m-0:"$fn"
fn_vol0() {
  test "$act" = script && printf "pacmd set-sink-volume 0 0\n"
}
fn=vol1+key+is-m-1:"$fn"
fn_vol1() {
  test "$act" = script && printf "pacmd set-sink-volume 0 6000\n"
}
fn=vol2+key+is-m-2:"$fn"
fn_vol2() {
  test "$act" = script && printf "pacmd set-sink-volume 0 12000\n"
}
fn=vol3+key+is-m-3:"$fn"
fn_vol3() {
  test "$act" = script && printf "pacmd set-sink-volume 0 18000\n"
}
fn=vol4+key+is-m-4:"$fn"
fn_vol4() {
  test "$act" = script && printf "pacmd set-sink-volume 0 24000\n"
}
fn=vol5+key+is-m-5:"$fn"
fn_vol5() {
  test "$act" = script && printf "pacmd set-sink-volume 0 30000\n"
}
fn=vol6+key+is-m-6:"$fn"
fn_vol6() {
  test "$act" = script && printf "pacmd set-sink-volume 0 36000\n"
}
fn=vol7+key+is-m-7:"$fn"
fn_vol7() {
  test "$act" = script && printf "pacmd set-sink-volume 0 42000\n"
}
fn=vol8+key+is-m-8:"$fn"
fn_vol8() {
  test "$act" = script && printf "pacmd set-sink-volume 0 48000\n"
}
fn=vol9+key+is-m-9:"$fn"
fn_vol9() {
  test "$act" = script && printf "pacmd set-sink-volume 0 54000\n"
}
