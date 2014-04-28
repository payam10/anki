require 'csv'

csvarray = CSV.read('./db/N5-vocab-list-10.csv')
small_deck = csvarray.sample(10)

jpn_deck = Deck.create(topic: "Japanese N5 Vocab List", card_count: small_deck.size)

small_deck.each do |card|
  Card.create(question: card[2], answer: card[0], deck_id: jpn_deck.id)
end


capitals = CSV.read('./db/world_capitals.csv')

cap_deck = Deck.create(topic: "World capitals", card_count: capitals.size)

capitals.each do |card|
  Card.create(question: card[2], answer: card[0], deck_id: cap_deck.id)
end

