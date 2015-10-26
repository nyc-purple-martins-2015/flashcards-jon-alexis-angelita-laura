class Guess < ActiveRecord::Base
  belongs_to :round
  belongs_to :card
  has_one :deck, through: :card
  has_one :user, through: :round
end
