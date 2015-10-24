class Card < ActiveRecord::Base
  belongs_to :deck
  has_many :guesses
  has_many :rounds, through: :guesses

  validates :question, presence: true
  validates :answer, :presence: true


  def possible_answers
    [self.answer, self.false_answer_1, self.false_answer_2, self.false_answer_3].shuffle
  end

end
