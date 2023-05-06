
# ALEENA'S SNIPPET ENGINE

Snippets of shell scripts that run your operating system.
It's a means to preview them all, and run any of them.
This system is meant to generate keybinding configuration
files and files defining shell aliases.

The snippets don't work out of the box. They're meant to use
programs of the operating system, such as terminals, dock bars
and hotkey systems.

Out of the box there is support for the programs my operating
system has, which are `sxhkd` for hotkeys, the `alacritty`
terminal and `lemonbar`.

# FILE STRUCTURE

> alm: aleena model
> alc: aleena controller

The names are h

## alm-snippet

The only executable with direct access to the configuration files.
It's also the only executable that can consider parsing them.

## alc-snippet

Depends on the external programs `alc-talk`, for input/output from
the user, and `alc-store-and-eval` for handling the commands that
run in a better way than simply running them in the background.

## alc-snippet-assemble

Some snippets need to be completed, as if they had text fields.
The way in which they are completed is vaguely explained through
`alm-snippet` but the way in which the user is prompted is up to
the implementor. So `alc-snippet-assemble` wires up `alm-snippet`
to `alc-talk`, to get support for gui and cli completion of
snippets.

## sxhkd

The snippet system supports key binding systems in an abstract
way, which is again communicated through `alm-snippet`. I use
sxhkd now, so I made the necessary extention to auto-generate
`~/.config/sxhkdrc`. There's no luck testing that thing though.
