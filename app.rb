require 'sinatra/base'
require 'sinatra/reloader'

class Bookmarks < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Hello World!'
  end

  get '/bookmarks' do
    "here's where the book are meant to be"
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end