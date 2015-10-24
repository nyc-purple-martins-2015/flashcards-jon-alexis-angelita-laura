require 'pry'
class Round < ActiveRecord::Base
  belongs_to :user
  belongs_to :deck
  has_many :guesses
  has_many :cards, through: :guesses

  def total_first_guesses
    first_try = 0
    current_cards = self.deck.cards
    # binding.pry
    current_cards.each do |card|
      guesses_for_card = count_guesses(card)
      guesses_for_card.each do |guess_data|
        if guess_data.solved && guess_data.attempts == 1
          first_try += 1
        end
      end
    end
    return first_try
  end

  def count_guesses(card) #keeps track of the num of guesses for that card in that round
    card.guesses.where(round: self.id).count
  end


end
