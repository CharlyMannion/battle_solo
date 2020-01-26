require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    'Enter Player Names!'
  end

  run! if app_file == $0
end
