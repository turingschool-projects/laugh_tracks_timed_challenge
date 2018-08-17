class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    if params[:age]
      @comedians = Comedian.by_age(params[:age])
      erb :'show'
    else
      @comedians = Comedian.all
      @specials = Special.all
      erb :'index'
    end
  end

end
