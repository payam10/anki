get '/' do

  erb :index
end

get '/register' do

  erb :register
end

get '/login' do

  erb :login
end

post '/' do
  puts "[LOG]  #{params.inspect}"
end

get '/play/:deck_id' do
	@deck_id = params[:deck_id]
	@cards = Card.where(deck_id: @deck_id).sample
  @question = @cards.question
  @answer = @cards.answer
  erb :play
end

post '/display_decks' do

	@decks = Deck.all


	erb :display_decks
end




