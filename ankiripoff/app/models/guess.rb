class Guess < ActiveRecord::Base
  has_one :card
  has_one :round
end
