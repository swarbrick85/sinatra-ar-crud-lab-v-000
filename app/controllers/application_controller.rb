
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
    
    erb :new 
  end 
  
  post '/articles' do 
  
    @article = Article.create(params)
    
     redirect to "/articles/#{@article1.id}"
     
  end 
  
  get '/articles/:id' do 
    @article = Article.find_by(id: params[:id])
    erb :show 
  end 
  
end
