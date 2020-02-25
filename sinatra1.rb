require "sinatra"
require 'sinatra/reloader'
=begin
enable :sessions

get '/' do
    "<h1>Hello, World!</h1>"
end

post '/hello' do
    session[:stored_message] = params[:message]
    "Saved the name #{params[:message]}."
end 

get '/greet' do
    "Greetings, #{session[:stored_message]}."
end
=end
#Candle's Exercise 
get '/howmany' do
    @name = params[:name]
    erb :howmany 
end

post '/candles' do
    session[:stored_message] = params[:message]
    "Users has requested: #{params[:message]} candles."
end 