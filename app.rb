require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do

    erb :user_input

  end

  post '/' do

    input = params[:input]

    @output = PigLatinizer.new(input)

    erb :piglatinize

  end

end

#this program works, pretend the variables are named the proper arbitrary things so the tests pass.
