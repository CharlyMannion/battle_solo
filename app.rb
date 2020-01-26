require 'sinatra/base'

class Battle < Sinatra::Base

  get '/name_form' do
    'Enter Player Names!'
    erb :name_form
  end

  post '/named_players' do
    p params
    @player_1 = params[:player_1]
    @player_2 = params[:player_2]
    erb :confirmed_players
  end

  run! if app_file == $0
end
