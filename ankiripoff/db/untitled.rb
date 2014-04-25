# require_relative '/dictionary.txt'

cards = IO.readlines("dictionary.txt")
cards.each do |line|
  words = line.split
  puts "Question " + words[0]
  puts "Answer " + words[1]
end

