class Deck < ActiveRecord::Base
  has_many :rounds
  has_many :cards
  has_many :guesses, through: :cards
  has_many :users, through: :rounds

  def shuffle_deck
    self.shuffle
  end
end

