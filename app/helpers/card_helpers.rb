def first_guess
  if @round.guesses.count == 1
    "guess"
  else
    "guesses"
  end
end