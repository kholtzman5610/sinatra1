require "sinatra"
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