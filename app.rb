require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
 get '/reversename/:name' do
    @reverse_name = params[:name].reverse
    @reverse_name
    # binding pry
  end

 get '/square/:number' do 
   @square = params[:number].to_i ** 2
   @square.to_s
   
end

 get '/say/:number/:phrase' do
   @say = params[:number][:phrase]
   
 end


end