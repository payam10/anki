class Card < ActiveRecord::Base
  has_one :guess
  belongs_to :deck
end
