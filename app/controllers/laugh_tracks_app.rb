class LaughTracksApp < Sinatra::Base
  get '/comedians' do
    erb :comedian
  end
end
