#!/bin/sh

set_interactive() {
  if tty -s
  then export INTERACTIVE=yes
  else export INTERACTIVE=no
  fi
}
if [ "$INTERACTIVE" = '' ]
then set_interactive
fi

execute_al() {
  alk-router "$@"
}
execute_al_interactive() {
  execute_al "$@"
}
execute_with_resources() {
  local stdout="$1" stderr="$2"
  shift 2

  cd "$(alc-memory permanent get last-repo)" || return 1
  execute_al "$@" 1> "$stdout" 2> "$stderr"

  if [ "$(wc "$stderr" -c | cut -d' ' -f1)" -gt 1 ]
  then alc-talk say-error "al $@" < "$stderr"
  fi
  if [ "$(wc "$stdout" -c | cut -d' ' -f1)" -gt 1 ]
  then alc-talk say-paragraph "al $@" < "$stdout"
  fi
}
execute_al_non_interactive() {
  mkdir /tmp/al 2> /dev/null
  local stdout="$(mktemp /tmp/al/stdout-$(date +%T)-XXXX)"
  local stderr="$(mktemp /tmp/al/stderr-$(date +%T)-XXXX)"
  trap "rm $stdout $stderr" INT QUIT TERM

  (execute_with_resources "$stdout" "$stderr" "$@")

  rm "$stdout" "$stderr"
}

get_log_text() {
  local args="$@"
  printf "%s: al %s\n" "$(date)" "$args"
}
mutate_log() {
  read first_line_goes_to_waste
  cat
  get_log_text "$@"
}
keep_log() {
  local file="$HOME/.local/state/al/log"
  mv "$file" "$file.bk" || return 1
  mutate_log "$@" < "$file.bk" > "$file" || return 1
  rm "$file.bk"
}

keep_log "$@" &
if [ "$INTERACTIVE" = yes ]
then execute_al_interactive "$@"
else execute_al_non_interactive "$@"
fi

