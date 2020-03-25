require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
 get '/reversename/:name' do
    @reverse_name = params[:name].reverse
    @reverse_name
  end

 get '/square/:number' do 
   @square = params[:number].to_i ** 2
   @square
end
end