require 'sinatra/base'

class Birthday < Sinatra::Base

  get '/' do
    erb :index
  end


  post '/info' do
    session[:name] = params[:name]
    session[:day] = params[:day]
    session[:month] = params[:month]
    redirect to('/hello')
  end

  get '/hello' do
     @name = session[:name]
     @day = session[:day]
     @month = session[:month]
     erb(:hello)
   end


 run if app_file == $0

end
