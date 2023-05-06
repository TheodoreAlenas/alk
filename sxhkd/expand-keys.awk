BEGIN { RS = "\0" }

NR % 2 == 1 {

  for (i = 1; i <= NF; i++) {

    if (i > 1)
      printf("; ");

    if ($i == "control" || $i == "alt" || $i == "shift") {
      printf("super + %s", $i);
      i++;
      printf(" + %s", $i);
    }
    else
      printf("super + %s", $i);
  }
}

NR % 2 == 0 {
  escaped_brackeys = $0;
  gsub(/{/, "\\{", escaped_brackeys);
  gsub(/}/, "\\}", escaped_brackeys);
  printf("\n  %s\n\n", escaped_brackeys);
}
