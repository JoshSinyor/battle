# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/reloader'

# set :session_secret, 'hastings'

# The Battle class is the main game.
class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Testing infrastructure working!'
  end

  # Start the server if ruby file executed directly.
  run! if app_file == $PROGRAM_NAME
end
