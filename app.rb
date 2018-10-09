require_relative 'config/environment'

class App < Sinatra::Base

  post '/' do
    @name = params[:name]
    @age = params[:age]
    @breed = params[:breed]
    # binding.pry
    erb :display_puppy
  end

  get '/' do
    erb :index
    # binding.pry
  end

  get '/new' do
    erb :create_puppy
    # binding.pry
  end


end
