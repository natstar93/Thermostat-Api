require 'sinatra/base'
require 'sinatra'

class ThermostatApi < Sinatra::Base
  get '/' do
    erb :index
  end

  run! if app_file == $0

  set :views, proc { File.join(root, 'views')}
end
