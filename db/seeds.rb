f1 = "false_answer_1"
f2 = "false_answer_2"
f3 = "false_answer_3"

jon = User.create({:username=> 'jonathan', :password => 'password'})
j_round = Round.create({:user_id=> 1, deck_id: 1})
deck = Deck.create({:category=>'cats'})

deck_2 = Deck.create({:category=> 'Spookey Halloween'})

c_card_1 = Card.create({:question => 'How many cats are the best?', :answer => 'all of them', false_answer_1: f1, false_answer_2: f2, false_answer_3: f3,  :deck_id => 1})
our_guess = Guess.create({:card_id=>1,:round_id=>1, :attempts=>1, :solved=> false})

c_card_2 = Card.create({:question => 'What cat name is the best?', :answer => 'All of them', false_answer_1: 'Sylvester', false_answer_2: 'Tom', false_answer_3: 'Garfield',  :deck_id => 1})

c_card_3 = Card.create({:question => 'Which cat is the funniest?', :answer => 'All of them', false_answer_1: 'Sylvester', false_answer_2: 'Tom', false_answer_3: 'Garfield',  :deck_id => 1})

s_card_1 = Card.create({:question => 'Where does Freddy Krueger Live', :answer => 'Elm Street', false_answer_1: 'Spooner Street', false_answer_2: 'Sesame Street', false_answer_3: 'Wall Street',  :deck_id => 2})

s_card_2 = Card.create({:question => 'What is the next line of the song: One, two, Freddys coming for you...,' :answer => 'three, four, better lock your door', false_answer_1: 'three, four, scared to the  core', false_answer_2: 'three, four, run some more', false_answer_3: 'three, four, gonna hear him roar',  :deck_id => 2})

s_card_3 = Card.create({:question => 'When does Freddy get you?' :answer => 'while you are sleeping', false_answer_1: 'when you are bad', false_answer_2: 'If you are a little kid and in his house', false_answer_3: 'If you say his name three times fast in the mirror',  :deck_id => 2})



