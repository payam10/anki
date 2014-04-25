get '/' do

  erb :index
end

get '/all_cards' do
  @results = Card.all.map(&:question)

  erb :view
end



