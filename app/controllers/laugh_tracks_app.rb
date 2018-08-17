class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    @comedians = Comedian.all
    erb :"comedians"
  end

  get '/comedians/:id' do
  @comedians = Comedian.find_by(params[:age])
  if params[:age]
    @age= params[:age]
  else
    @age = 0
  end
  erb :"comedians/index"
  end
end
