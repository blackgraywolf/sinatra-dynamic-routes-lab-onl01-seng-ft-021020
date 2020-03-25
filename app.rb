require_relative 'config/environment'
require_relative 'pry'
class App < Sinatra::Base
 get '/reversename/:name' do
    @reverse_name = params[:name].reverse
    @reverse_name
  end

# get '/square/:number' do 
#   # @square = params[:number].to_i ** 2
#   # @square.to_i
#   @num = params[:number].to_i ** 2
#   @num.to_s
# end

get '/square/:number' do
    @num = params[:number].to_i ** 2
    @num.to_s
  end
  
    get '/say/:number/:phrase' do
    str = ""
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @num.times { str += "#{@phrase}\n" }
    str
  end

end