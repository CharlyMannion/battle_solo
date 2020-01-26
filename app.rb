require './lib/player'
require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/name_form' do
    'Enter Player Names!'
    erb :name_form
  end

  post '/named_players' do
    p params
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect '/named_players'
  end

  get '/named_players' do
    p session
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    erb :confirmed_players
  end

  run! if app_file == $0
end
