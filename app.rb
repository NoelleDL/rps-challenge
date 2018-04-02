require 'sinatra/base'
require './lib/play.rb'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    redirect('/rps/index')
  end

  get '/rps/index' do
    erb(:'/rps/index')
  end

  post '/rps/game' do
    session[:message] = params[:name_input]
    redirect('/rps/game')
  end

  get '/rps/game' do
    @name_input = session[:message]
    erb(:'/rps/game')
  end

  post '/rps/play' do
    session[:choice] = params[:choice_input]
    redirect('/rps/play')
  end

  get '/rps/play' do
    @choice_input = session[:choice]
    erb(:'/rps/play')
  end
end
