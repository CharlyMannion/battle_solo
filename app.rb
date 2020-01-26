require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/name_form' do
    'Enter Player Names!'
    erb :name_form
  end

  post '/named_players' do
    p params
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    redirect '/named_players'
  end

  get '/named_players' do
    p session
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    erb :confirmed_players
  end

  run! if app_file == $0
end
