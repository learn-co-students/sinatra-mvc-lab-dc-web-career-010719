require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    x = PigLatinizer.new
    @piglatinizedtext=x.piglatinize(params["user_phrase"])
    erb :output
  end

end
