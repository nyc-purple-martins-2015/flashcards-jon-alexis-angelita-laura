jon = User.create({:username=> 'jonathan', :password => 'password'})
j_round = Round.create({:user_id=> 1, deck_id: 1})
deck = Deck.create({:category=>'cats'})
c_card_1 = Card.create({:question => 'how many cats are the best?', :answer => 'all of them', :deck_id => 1})
our_guess = Guess.create({:card_id=>1,:round_id=>1, :attempts=>1, :solved=> false})

jon.password="password"
