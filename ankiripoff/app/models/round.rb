class Round < ActiveRecord::Base
  belongs_to :users
  belongs_to :decks
  belongs_to :guesses
  has_many :cards, through :decks
end

