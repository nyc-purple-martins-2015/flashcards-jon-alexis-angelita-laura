class Card < ActiveRecord::Base
  belongs_to :deck
  has_many :guesses
  has_many :rounds, through: :guesses

  validates :question, presence: true
  validates :answer, presence: true
<<<<<<< HEAD

=======
>>>>>>> 08e9031c5d7b722bb02b521110e735a60cc8cc66

  def possible_answers
    [self.answer, self.false_answer_1, self.false_answer_2, self.false_answer_3].shuffle
  end


  def update_guesses(deck)
    correct = []
    these_cards = deck
    while these_cards.count > 0
      these_cards.each do |c|
        if @choice == c.answer
          c.guesses.solved = true
          # c.guesses.attempts += 1
          correct << c
          these_cards.delete(c)
        # else
        # c.guesses.attempts += 1
        end
      end
    end
  end
end
