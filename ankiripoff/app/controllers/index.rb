get '/' do

  erb :index
end

get '/all_cards' do
  @results = Card.all.map(&:question)

  erb :view
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




