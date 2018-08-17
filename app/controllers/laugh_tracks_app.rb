class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    if params[:age]
      @comedians = Comedian.where(age: params[:age])
      erb :show
    else
      @comedians = Comedian.all
      @average_age = Comedian.average(:age).round(2)
      erb :index
    end
  end

  get '/comedians/:age' do
    @comedians = Comedian.where(age: params[:age])
    erb :show
  end
end
