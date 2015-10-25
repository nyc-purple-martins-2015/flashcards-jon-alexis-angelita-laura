class Guess < ActiveRecord::Base
  belongs_to :round
  belongs_to :card
  has_one :deck, through: :card
  has_one :user, through: :round

<<<<<<< HEAD
  
=======


>>>>>>> 08e9031c5d7b722bb02b521110e735a60cc8cc66
end
