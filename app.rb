require 'sinatra/base'
require 'sinatra'

class ThermostatApi < Sinatra::Base
  
  enable :sessions

  get '/' do
    erb :index
  end

  post '/new' do
  	session[:temperature] = params[:temp]
  	session[:time] = params[:time]
  end

  get '/temp' do
    session[:temperature] || 20 
  end

  run! if app_file == $0

  set :views, proc { File.join(root, 'views')}
end
