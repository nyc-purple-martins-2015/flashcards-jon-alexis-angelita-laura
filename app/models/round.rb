require 'pry'
class Round < ActiveRecord::Base
  belongs_to :user
  belongs_to :deck
  has_many :guesses
  has_many :cards, through: :guesses

  def done_cards
    guesses.where(solved: true).map { |guess| guess.card }
  end
  
  def total_first_guesses
    first_try = 0
    current_cards = self.deck.cards
    current_cards.each do |card|
      guesses_for_card = count_guesses(card)
      first_try += 1 if guesses_for_card == 1
    end
    return first_try
  end

  def count_guesses(card) #keeps track of the num of guesses for that card in that round
    card.guesses.where(round: self.id).count
  end



end
