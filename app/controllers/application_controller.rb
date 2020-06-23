require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
  end

  get '/' do
      "Welcome to Fwitter"
  end

  get '/signup' do
    if !!session[:id]
      redirct '/tweets'
    end

  end

  get '/tweets' do

  end

  post '/signup' do
    if params[:username] == "" || params[:email] == "" || params[:password] == ""
      redirect "/signup"
    end
    u = User.create(params)
    if u.save
      session[:id] = u.id
      redirect '/tweets'
    end
  end
end
