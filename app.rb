require 'sinatra/base'
require 'sinatra/reloader'

class Bookmarks < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/bookmarks' do
    @bookmarks = [
      "https://www.youtube.com/",
      "https://github.com/",
      "https://www.codewars.com/dashboard"
    ]
    erb :'bookmarks/index'
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end