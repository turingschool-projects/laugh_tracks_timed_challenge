class LaughTracksApp < Sinatra::Base
  get '/comedians' do
    @comedians = Comedian.all
    require 'pry'; binding.pry
    erb :"/index"
  end
end
