get '/' do

  erb :index
end

get '/all_cards' do
  @results = Card.all.map(&:question)

  erb :view
end

post '/' do
  puts "[LOG]  #{params.inspect}"
end



