require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, 'myauntfanny54321'
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    @cart = params[:item]
    @session = session
binding.pry
    @session[:item] = params[:item]
    erb :cart
  end
end
