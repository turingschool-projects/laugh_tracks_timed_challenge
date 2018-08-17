class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    @comedians = Comedian.all
    @specials = Special.all
    erb :'index'
  end

  get '/comedians' do
    @comedians = Comedian.find_by(params[:filter])
    @age = params[:age]
    erb :"index"
  end

end
