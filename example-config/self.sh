# shellcheck disable=SC2154
# shellcheck disable=SC2016

fn=keys+key+is-q:"$fn"
fn_keys() {
  case "$act" in
    script) printf "alm-snippet info %s\n" "$1" ;;
    descr) cat <<EOM
Manual (like this one). I love Emacs. Even if I don't use it.
EOM
    ;;
    arg1) printf "manip\nalm-snippet unpreview\nalm-snippet preview key\n" ;;
  esac
}

fn=open+key+is-o+silent+alias+is-k:"$fn"
fn_open() {
  case "$act" in
    script) printf "alc-snippet gui\n" ;;
    descr) cat <<EOM
The idea that key bindings can be listed inspired me to make my own
system for keybindings. Emacs is famous for it, but sadly simple Linux
tools can't do all that much. That's when I started taking Linux
more seriously and I went from Mint to Arch. I called the machine
'slemacs', as in 'suckless Emacs' or perhaps 'slayer of Emacs'.
Though, I still can't do most of what Emacs can. I can't list bindings
on the fly by any means because I still rely on a 3rd party restrictive
hotkey daemon. By the way, this did not always use to be the case. The
very first system I made, which was dmenu morphed into a paranoid
hotkey daemon, had a which-key. It was 100% bund to it in fact. It
wasn't good by any means but it was quite something, since the stakes
are very low on keybindings today.
EOM
      ;;
  esac
}

fn=updsn+key+is-e-u:"$fn"
fn_updsn() {
  case "$act" in
    script) printf '(cd ~/code/sys && make -j 5) && alc-snippet-to-sxhkd update-sxhkd; echo reset: All done\n' ;;
    descr) printf 'Set everything up after a change\n' ;;
    color) printf "sed '%s'\n" "s/update/\nattention\nupdate\nnormal\n/" ;;
  esac
}

fn=r_sxh+key:"$fn"
fn_r_sxh() {
  case "$act" in
    script) printf 'killall sxdkd; sxhkd &\n' ;;
    descr) cat <<EOM
Caution in where sxhkd was started. Make sure INTERACTIVE=no.
EOM
    ;;
  esac
}

fn=clip+key+is-c:"$fn"
fn_clip() {
  case "$act" in
    script) printf "alc-snippet gui copy\n" ;;
    descr)
      cat <<EOM
Similar to 'open', but for programming snippets such as language specific loops.
I don't expect to use it much.
EOM
      ;;
    color) printf "sed '%s'\n" 's/copy/\nattention\ncopy\nnormal\n/' ;;
  esac
}

fn=xprt+key:"$fn"
fn_xprt() {
  case "$act" in
    script) printf "export\n" ;;
    descr)
      cat <<EOM
List the exports of the hotkey system. The need first appeared in April 2023,
when INTERACTIVE='' and a lot went wrong. Though even before that, with the alk
system, there was a  super v e  command, 'view exports', for similar reasons.
EOM
      ;;
  esac
}

fn=hist+key-term:"$fn"
fn_hist() {
  case "$act" in
    script) printf "nvim ~/.cache/al/history.sh\n" ;;
    descr)
      cat <<EOM
The cache of the snippets system. It was originally at least (April 2023) meant
to be used for macros, but while I always talk about macros, I never ever need
them, so I'm not certain how useful it is. But you can see what the hell got
executed, because these scripts in there are exactly what's executed. Though
one line per shell process. Not all in one evaluation.
EOM
    ;;
  esac
}

#fn=r_las+key+is-F+dont-bake:"$fn"
#fn_r_las() {
#  case "$act" in
#    script) tail -1 ~/.cache/al/history.sh ;;
#    descr) cat <<EOM
#tail -1 ~/.cache/al/history.sh | sh  # more or less
#Repeat the last command, as found in ~/.cache/al/history.sh
#This key is a little scary. It like needs another layer
#of abstraction, it fails the premise of being transparent.
#EOM
#      ;;
#  esac
#}

