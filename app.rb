require 'sinatra'

get '/' do
 erb :index 
end  

get '/blog' do
  erb :blog
end

get '/blog1' do
  erb :blog1
end  
 