class Guess < ActiveRecord::Base
  has_one :round
  belongs_to :card
end
