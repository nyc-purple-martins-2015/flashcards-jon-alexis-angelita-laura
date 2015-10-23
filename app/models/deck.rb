class Deck < ActiveRecord::Base
  has_many :rounds
  has_many :cards
  has_many :guesses, through: :cards
  has_many :users, through: :rounds

  def shuffle
    @deck.shuffle
  end

  def remove_card(card)
    if correct_guess == true
      card.destroy
    end
  end

  def is_empty?
    @deck.count == 0
  end
end




end
