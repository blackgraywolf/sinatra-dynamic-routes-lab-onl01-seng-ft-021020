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
   str = ""
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @num.times { str += "#{@phrase}\n" }
    str
 end

 get '/say/:word1/:word2/:word3/:word4/:word5' do
   str = ""
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
  str =  "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
    str
    binding pry
  end

end