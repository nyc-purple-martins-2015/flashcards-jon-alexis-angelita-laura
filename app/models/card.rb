class Card < ActiveRecord::Base
  belongs_to :deck
  has_many :guesses
  has_many :rounds, through: :guesses


  def possible_answers
    [self.answer, self.false_answer_1, self.false_answer_2, self.false_answer_3].shuffle
  end

def update_guess
  correct = []
    these_cards = deck
    while these_cards.length > 0
      these_cards.each do |c|
        if @choice == c.answer
          guess.solved = true
          guess.attempts += 1
          correct << c
          these_cards.delete(c)
        else
          guess.attempts += 1
        end
      end
    end
end
