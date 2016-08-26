require './config/environment'
require 'rack-flash'

class ApplicationController < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, 'freddit'
    set :public_folder, 'public'
    set :views, 'app/views'
    use Rack::Flash
  end

  get "/" do
    erb :'index.html'
  end

  helpers do

    def logged_in?
      !!session[:id]
    end

    def current_user
      @current_user ||= User.find(session[:id]) if session[:id]
    end

    def login(username, password)
      user = User.find_by(:username => username)
      if user && user.authenticate(password)
        session[:id] = user.id
      else
        redirect '/'
      end
    end

    def logout!
      session.clear
    end
  end

end
