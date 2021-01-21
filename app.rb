# frozen_string_literal: true

require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

# The Battle class is the main game class.
class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  # enable :sessions

  get '/test_infrastructure' do
    'Testing infrastructure working!'
  end

  get '/' do
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    # session[:player_1_name] = params[:player_1_name]
    # session[:player_2_name] = params[:player_2_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb(:play)
  end

  post '/round_1' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb(:round_1)
  end

  run! if app_file == $PROGRAM_NAME
end
