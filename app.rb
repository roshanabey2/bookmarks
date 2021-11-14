require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end


  get '/' do
    p ENV
    erb(:index)
  end

  get '/bookmarks' do
    p ENV
    @bookmarks = Bookmark.all
    erb :'bookmarks'
  end

  post '/add' do
    p params[:new_bookmark]
    Bookmark.create(new_bookmark: params[:new_bookmark])
    redirect '/bookmarks'
  end
  
  # start the server if ruby file executed directly
  run! if app_file == $0
end