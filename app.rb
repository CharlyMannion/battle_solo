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
    # @game = Game.create(player_1, player_2)
    redirect '/named_players'
  end

  get '/named_players' do
    @game = $game
    erb :confirmed_players
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.player_2)
    redirect '/game_over' if @game.game_over?
    erb :attack
  end

  get '/second_attack' do
    @game = $game
    @game.attack(@game.player_1)
    redirect '/game_over' if @game.game_over?
    erb :second_attack
  end

  get '/game_over' do
    @game = $game
    @losing_player = @game.losing_player.name
    erb :game_over
  end

  run! if app_file == $0
end
