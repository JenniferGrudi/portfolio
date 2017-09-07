require 'sinatra'

get '/' do
 erb :index 
end  

get '/resume' do
  erb :resume
end  

post '/resume' do
  erb :resume
end

get '/blog' do
  erb :blog
end

get '/blog1' do
  erb :blog1
end  
 