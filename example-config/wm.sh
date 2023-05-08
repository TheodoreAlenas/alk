# shellcheck disable=SC2154
# shellcheck disable=SC2016


fn=rswm+key+is-X:"$fn"
fn_rswm() {
  case "$act" in
    script) printf "killall bspwm\n" ;;
  esac
}

fn=trans+key:"$fn"
fn_trans() {
  case "$act" in
    script) printf "picom-trans --current %s\n" "$1" ;;
    arg1) printf "recommend\n95\n100\n20\n80\n" ;;
  esac
}

fn=xprop+key:"$fn"
fn_xprop() {
  case "$act" in
    script) printf 'xprop -id "$(bspc query -N -n)"\n' ;;
  esac
}

# bspwm

fn=close+key+is-Q:"$fn"
fn_close() {
  case "$act" in
    script) printf "bspc node --close\n" ;;
  esac
}

fn=deskt+key:"$fn"
fn_deskt() {
  case "$act" in
    script) printf "bspc desktop %s --focus\n" "$1" ;;
    arg1) printf "command\nbspc query -D --names\n" ;;
  esac
}

# reason why I only have 8 desktops

fn=dvork+key+is-0:"$fn"
fn_dvork() {
  case "$act" in
    script) printf "setxkbmap us -variant dvorak\n" ;;
  esac
}

fn=greek+key+is-9:"$fn"
fn_greek() {
  case "$act" in
    script) printf "setxkbmap gr\n" ;;
  esac
}

fn=us+key:"$fn"
fn_us() {
  case "$act" in
    script) printf "setxkbmap us\n" ;;
  esac
}

fn=kbmap+key:"$fn"
fn_kbmap() {
  case "$act" in
    script) printf "setxkbmap us -variant %s\n" "$1" ;;
    arg1) printf "command\nlocalectl list-x11-keymap-variants us\n" ;;
  esac
}

fn=incr+key+is-i:"$fn"
fn_incr() {
  test "$act" = script && printf "bspc node @parent --ratio +0.05\n"
}
fn=decr+key+is-d:"$fn"
fn_decr() {
  test "$act" = script && printf "bspc node @parent --ratio -0.05\n"
}

fn=clkw+key+is-r:"$fn"
fn_clkw() {
  test "$act" = script && printf "bspc node @parent --rotate 90\n"
}
fn=cclkw+key+is-R:"$fn"
fn_cclkw() {
  test "$act" = script && printf "bspc node @parent --rotate 270\n"
}

# movement

fn=wm_w+key+is-h:"$fn"
fn_wm_w() {
  test "$act" = script && printf "bspc node west --focus\n"
}
fn=wm_s+key+is-j:"$fn"
fn_wm_s() {
  test "$act" = script && printf "bspc node south --focus\n"
}
fn=wm_n+key+is-k:"$fn"
fn_wm_n() {
  test "$act" = script && printf "bspc node north --focus\n"
}
fn=wm_e+key+is-l:"$fn"
fn_wm_e() {
  test "$act" = script && printf "bspc node east --focus\n"
}
fn=wm_pa+key:"$fn"
fn_wm_pa() {
  test "$act" = script && printf "bspc node @parent --focus\n"
}
fn=wm_br+key+is-w-o:"$fn"
fn_wm_br() {
  test "$act" = script && printf "bspc node @brother --focus\n"
}
fn=wm_fi+key:"$fn"
fn_wm_fi() {
  test "$act" = script && printf "bspc node @first --focus\n"
}
fn=wm_se+key:"$fn"
fn_wm_se() {
  test "$act" = script && printf "bspc node @second --focus\n"
}
fn=wm_la+key:"$fn"
fn_wm_la() {
  test "$act" = script && printf "bspc node last --focus\n"
}
fn=wm_ru+key+is-w-r:"$fn"
fn_wm_ru() {
  test "$act" = script && printf "bspc rule -l\n"
}
fn=wm_fl+key:"$fn"
fn_wm_fl() {
  test "$act" = script && printf "bspc node --state floating\n"
}
fn=wm_tl+key:"$fn"
fn_wm_tl() {
  test "$act" = script && printf "bspc node --state tiled\n"
}
fn=wm_fs+key:"$fn"
fn_wm_fs() {
  test "$act" = script && printf "bspc node --state fullscreen\n"
}

# desktops

fn=g_wmd+copy-stdout+sh:"$fn"
fn_g_wmd() {
  case "$act" in
    script) printf "alm-big-snippets desktop-bindings\n" ;;
    descr) printf "Key bindings for moving between WM desktops\n" ;;
  esac
}

