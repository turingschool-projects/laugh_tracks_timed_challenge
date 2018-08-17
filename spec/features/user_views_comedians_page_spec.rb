RSpec.describe 'Comedians index page' do
  before(:each) do
    @comedian_1 = Comedian.create(name: 'Ron', age:40)
    @comedian_2 = Comedian.create(name: 'Sally', age:50)
  end
  context 'on opening homepage'
    it 'shows comedians with names and ages' do
      visit '/comedians'

      expect(page).to have_content(@comedian_1.name)
      expect(page).to have_content(@comedian_2.name)
    end

    # it 'shows song lengths' do
    #   visit '/songs'
    #
    #   expect(page).to have_content("Length: #{@song_1.length}")
    #   expect(page).to have_content(@song_2.length)
    # end
end
