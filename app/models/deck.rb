class Deck < ActiveRecord::Base
  has_many :rounds
  has_many :cards
  has_many :guesses, through: :cards
  has_many :users, through: :rounds

  def shuffle
    self.shuffle
  end

  def remove_card(card)
    if correct_guess == true
      card.destroy
    end
  end

  def is_empty?
    self.count == 0
  end

end

