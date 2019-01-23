
require_relative '../../config/environment'
require 'pry'
class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
  end
  
  get '/articles/new' do
    binding.pry
    erb :new 
  end 
  
  post '/articles' do 
  
    @article1 = Article.create(params)
    
    erb :index
  end 
  
end
