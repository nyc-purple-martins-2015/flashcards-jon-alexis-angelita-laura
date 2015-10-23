f1 = "false_answer_1"
f2 = "false_answer_2"
f3 = "false_answer_3"

jon = User.create({:username=> 'jonathan', :password => 'password'})
j_round = Round.create({:user_id=> 1, deck_id: 1})
deck = Deck.create({:category=>'cats'})
c_card_1 = Card.create({:question => 'how many cats are the best?', :answer => 'all of them', false_answer_1: f1, false_answer_2: f2, false_answer_3: f3,  :deck_id => 1})
our_guess = Guess.create({:card_id=>1,:round_id=>1, :attempts=>1, :solved=> false})


