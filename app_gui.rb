require 'sinatra'
# require 'sinatra/base'
require 'erb'

module TicTacToeProject
  class App < Sinatra::Application
    #routes
    get '/' do
      erb :index
    end

    get '/play' do
      erb :play
    end
    run! if app_file == $0
  end
end
