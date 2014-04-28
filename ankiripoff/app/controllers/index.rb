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

get '/play' do
  @card = Card.all.sample
  @question = @card.question
  @answer = @card.answer
  erb :play
end






