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
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  post '/attack' do
    @game = $game
    @game.attack(@game.player_2)
    erb(:attack)
  end

  run! if app_file == $PROGRAM_NAME
end
