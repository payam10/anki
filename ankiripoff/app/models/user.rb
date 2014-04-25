class User < ActiveRecord::Base
  has_many :decks, through :rounds
end
