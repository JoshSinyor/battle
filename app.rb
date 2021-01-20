#
# frozen_string_literal: true
#
# require 'sinatra'
# require 'sinatra/reloader' if development?
#
# set :session_secret, 'hastings'
#
# The Battle class is the main game.
# class Battle < Sinatra::Base
#   configure :development do
#     register Sinatra::Reloader
#   end
#
#   get '/' do
#     'Testing infrastructure working!'
#   end

# frozen_string_literal: true

require 'sinatra'
require 'sinatra/base'
require 'shotgun'

# The Battle class is the main game class.
class Battle < Sinatra::Base
  enable :sessions

  get '/test_infrastructure' do
    'Testing infrastructure working!'
  end

  get '/' do
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    erb(:index)
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb(:play)
  end

  run! if app_file == $PROGRAM_NAME
end
