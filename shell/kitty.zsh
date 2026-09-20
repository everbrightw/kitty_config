# Kitty explicitly flags only app startup and Command+N windows.
if [[ -o interactive && "$TERM" == "xterm-kitty" && "${KITTY_POKEMON_WELCOME:-0}" == 1 ]]; then
  [[ -x "$HOME/.local/bin/pokemon-welcome" ]] && "$HOME/.local/bin/pokemon-welcome"
fi
unset KITTY_POKEMON_WELCOME

alias poke='pokemon-colorscripts --name'
alias poke-random='pokemon-colorscripts --random'
poke-shiny() {
  pokemon-colorscripts --name "$1" --shiny
}
