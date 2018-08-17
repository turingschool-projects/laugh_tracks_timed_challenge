class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    if params[:age]
      @comedians = Comedian.where(age: params[:age])
    else
      @comedians = Comedian.all
    end
    @avg_age = Comedian.avg_age
    erb :comedians
  end
end
