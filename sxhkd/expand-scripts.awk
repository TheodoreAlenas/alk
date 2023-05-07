BEGIN { s = 1 }

# auto-check-chop-key-bindings
# sed "s/.* r_\(\S*\).*/\1/"
NR == s + 0 { r_keys = $0 }
NR == s + 1 { r_silent = $0 }
NR == s + 2 { r_interactive = $0 }
NR == s + 3 { r_you_or_me = $0 }
NR == s + 4 { r_snippet_id = $0 }
# auto-check-end

NR == s + 4 {

  printf("%s\0", r_keys);

  should_quote = (r_you_or_me != "call-me" && r_silent != "silent");

  if (r_you_or_me == "call-me") {
    printf("alc-snippet gui-run %s key", r_snippet_id);
  }
  else if (r_silent != "silent") {

    printf("alm-snippet colored-wrapped %s key ", r_snippet_id);  # paint
    printf("| ~/.config/alsnip/user-io say-bar \"sxhkd (%s)\" & ", r_keys);
    printf("~/.config/alsnip/user-io execute ");

  }
  if (should_quote)
    printf("'");
}

(NR > s + 4 && /rnwsc-end-of-script/) || (NR == s + 4 && r_you_or_me == "call-me") {

  if (should_quote)
    printf("'");

  printf("\0");

  s = NR + 1;
}

NR > s + 5 {
  printf("; ");
}

NR > s + 4 {
  l = $0;

  if (should_quote)
    gsub(/'/, "'\"'\"'", l);

  printf("%s", l);
}

