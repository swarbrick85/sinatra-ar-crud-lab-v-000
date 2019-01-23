
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
  
    @article1 = Article.create(params)
    
     redirect to "/articles/#{@article1.id}"
     
  end 
  
  get '/articles/:id' do 
    @article = Article.find_by(id: params[:id])
    erb :show 
  end 
  
  get '/articles' do
    @articles = Article.all
    erb :index
  end
  
  get '/articles/:id/edit' do 
    @article2 = Article.find_by(id: params[:id])
    erb :edit 
  end 
  
  patch '/articles/:id' do 
    @article2.title = params[:title]
    @article2.content = params[:content]
    erb :edit
  end 
  
  
end
