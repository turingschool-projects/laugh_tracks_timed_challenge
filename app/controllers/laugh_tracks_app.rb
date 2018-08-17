class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    @comedians = Comedian.all
    @specials = Special.all
    erb :'index'
  end

  get '/comedians/' do
    @comedians = Comedian.by_age(params[:age])
    erb :'show'
  end

end
