require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
      "Welcome to Fwitter"
  end

  get '/signup' do

  end

  get '/tweets' do

  end

  post '/signup' do

    redirect '/tweets'
  end
end
 
