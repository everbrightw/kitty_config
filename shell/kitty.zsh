# Show the welcome once per Kitty OS window, not in every tab or split.
if [[ -o interactive && "$TERM" == "xterm-kitty" && -x "$HOME/.local/bin/pokemon-welcome" ]]; then
  pokemon_welcome_id="${KITTY_PID:-kitty}-${KITTY_OS_WINDOW_ID:-window}"
  pokemon_welcome_marker="${TMPDIR:-/tmp}/pokemon-welcome-${USER}-${pokemon_welcome_id}"
  if [[ ! -e "$pokemon_welcome_marker" ]]; then
    : >| "$pokemon_welcome_marker"
    "$HOME/.local/bin/pokemon-welcome"
  fi
  unset pokemon_welcome_id pokemon_welcome_marker
fi

alias poke='pokemon-colorscripts --name'
alias poke-random='pokemon-colorscripts --random'
poke-shiny() {
  pokemon-colorscripts --name "$1" --shiny
}
