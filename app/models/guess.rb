class Guess < ActiveRecord::Base
  belongs_to :round
  belongs_to :card

  def deck
    self.card.deck
  end

  def user
    self.round.user
  end

end
