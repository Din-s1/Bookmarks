require 'sinatra/base'
require './lib/bookmarks.rb'

class BookmarkManager < Sinatra::Base
  get '/' do
    erb(:index)
  end

  get '/bookmarks' do
    
    erb(:bookmarks)
  end

  post '/bookmarks'do
    Bookmarks.add(params[:bookmark])
    redirect '/bookmarks'
  end


  run! if app_file == $0
end
