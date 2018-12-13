require 'sinatra'

class Battle < Sinatra::Base
  get '/' do
    'Hello Battle!'
    # erb(:index)
  end
run! if app_file == $0
end
