cards = IO.readlines("./db/dictionary.txt")
cards.each do |line|
  words = line.split
  Card.create(question: words[0], answer: words[1])
end

