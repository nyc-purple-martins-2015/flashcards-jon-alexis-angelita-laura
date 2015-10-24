class Round < ActiveRecord::Base
  belongs_to :user
  belongs_to :deck
  has_many :guesses
  has_many :cards, through: :guesses

  def self.total_first_guesses
    first_try = 0
    current_cards = self.deck.cards #getting all of the cards in a round
    current_cards.each do |card|
      guesses_for_card = count_guesses(card)
      guesses_for_card.each do |guess_data|
        if guess_data.solved && guess_data.attempts == 1
          first_try += 1
        end
      end
    end
  end

  def count_guesses(card) #keeps track of the num of guesses for that card in that round
    card.guesses.where(round: current_round).count
  end

  def self.current_round
    curr_round = deck.rounds.first.guesses.first.round_id
  end

end
