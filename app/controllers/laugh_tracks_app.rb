class LaughTracksApp < Sinatra::Base

  get "/comedians" do
    @comedians = Comedian.all
    erb :index
  end

  get "/comedians" do
    @comedians = Comedian.where(age: params[:age])
    erb :index
  end

end
