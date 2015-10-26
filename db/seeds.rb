f1 = "false_answer_1"
f2 = "false_answer_2"
f3 = "false_answer_3"

rgb = 'Red-green blindness'
bly = 'Blurry yellow vision'
rtd = 'Red tint to vision'
btd = 'Blue tint to vision'


deck = Deck.create({:category=>'cats'})

deck_2 = Deck.create({:category=> 'Spookey Halloween'})

deck_3 = Deck.create({category: 'Ophthalmologic side effects of pharmaceuticals'})

c_card_1 = Card.create({:question => 'How many cats are the best?', :answer => 'all of them', false_answer_1: f1, false_answer_2: f2, false_answer_3: f3,  :deck_id => 1})

c_card_2 = Card.create({:question => 'What cat name is the best?', :answer => 'All of Them', false_answer_1: 'Sylvester', false_answer_2: 'Tom', false_answer_3: 'Garfield',  :deck_id => 1})

c_card_3 = Card.create({:question => 'Which cat is the funniest?', :answer => 'All of Them', false_answer_1: 'Sylvester', false_answer_2: 'Tom', false_answer_3: 'Garfield',  :deck_id => 1})

s_card_1 = Card.create({:question => 'Where does Freddy Krueger Live', :answer => 'Elm Street', false_answer_1: 'Spooner Street', false_answer_2: 'Sesame Street', false_answer_3: 'Wall Street',  :deck_id => 2})

s_card_2 = Card.create({:question => 'What is the next line of the song: One, two, Freddys coming for you...', :answer => 'Three, four, better lock your door', false_answer_1: 'Three, four, scared to the  core', false_answer_2: 'Three, four, run some more', false_answer_3: 'Three, four, gonna hear him roar',  :deck_id => 2})

s_card_3 = Card.create({:question => 'When does Freddy get you?', :answer => 'While you are sleeping', false_answer_1: 'When you touch his special hat', false_answer_2: 'If you are a little kid and in his house', false_answer_3: 'If you say his name three times fast in the mirror',  :deck_id => 2})

o_card_1 = Card.create({:question => 'Ethambutol causes what?', :answer => rgb, false_answer_1: bly, false_answer_2: rtd, false_answer_3: btd,  :deck_id => 3})

o_card_2 = Card.create({:question => 'Digoxin causes what?', :answer => bly, false_answer_1: rgb, false_answer_2: rtd, false_answer_3: btd,  :deck_id => 3})

o_card_3 = Card.create({:question => 'Sildenafil causes what?', :answer => btd, false_answer_1: rgb, false_answer_2: rtd, false_answer_3: bly,  :deck_id => 3})
