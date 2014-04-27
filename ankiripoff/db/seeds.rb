require 'csv'

csvarray = CSV.read('./db/N5-vocab-list-10.csv')
small_deck = csvarray.first(10)

jpn_deck = Deck.create(topic: "Japanese N5 Vocab List", card_count: small_deck.size)

small_deck.each do |card|
  Card.create(question: card[2], answer: card[0], decks_id: jpn_deck.id)
end

