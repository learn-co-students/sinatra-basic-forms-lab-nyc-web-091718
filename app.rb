require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  post '/' do
    @puppy = params
    erb :display_puppy
  end

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

end
