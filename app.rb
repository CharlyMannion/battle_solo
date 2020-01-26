require 'sinatra/base'

class Battle < Sinatra::Base

  get '/name_form' do
    'Enter Player Names!'
  end

  run! if app_file == $0
end
