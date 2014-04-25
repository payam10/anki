class Deck < ActiveRecord::Base
  has_many :cards
  has_one :round
end
