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
  @questions = Card.all.map(&:question)
  @answers = Card.all.map(&:answer)


  erb :play
end






