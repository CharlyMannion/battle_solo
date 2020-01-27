require './lib/player'
require './lib/game'
require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/name_form' do
    'Enter Player Names!'
    erb :name_form
  end

  post '/named_players' do
    p params
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    redirect '/named_players'
  end

  get '/named_players' do
    @player_1_name = $game.player_1.name
    @player_2_name = $game.player_2.name
    @player_2_hp = $game.player_2.hit_points
    erb :confirmed_players
  end

  get '/attack' do
    @player_1_name = $game.player_1.name
    @player_2_name = $game.player_2.name
    @player_1 = $game.player_1
    @player_2 = $game.player_2
    $game.attack(@player_2)
    @player_2_hp = $game.player_2.hit_points
    erb :attack
  end

  run! if app_file == $0
end
