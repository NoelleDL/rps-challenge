require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/computer.rb'

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
    player = Player.new
    player.receive_hand(params[:choice_input])
    computer = Computer.new
    session[:computer_choice] = computer.computer_choice

    #Maybe helpful

    #player.calculate_ai
    #winner = player.compare_hands
    #need to pass the winner to the screen then go back and start again
    #--> session[:choice] = [params[:choice_input], winner]

    redirect('/rps/play')
  end

  get '/rps/play' do
    @computer_choice = session[:computer_choice]
    p @computer_choice
    @choice_input = session[:choice]
    erb(:'/rps/play')
  end
end
