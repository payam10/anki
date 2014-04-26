require 'csv'

csvarray = CSV.read('./db/N5-vocab-list-10.csv')

jpn_deck = Deck.create(topic: "Japanese N5 Vocab List")

csvarray.each do |card|
  Card.create(question: card[0], answer: card[2], decks_id: jpn_deck.id)
end

