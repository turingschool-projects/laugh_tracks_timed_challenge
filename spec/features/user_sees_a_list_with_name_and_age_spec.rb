RSpec.describe 'Comedian page' do
  context 'as a visitor' do
    it 'shows list of comedians' do
      comic_1 = Comedian.create(name: 'Mitch Hedberg', age:48)

      visit '/comedians'
      save_and_open_page
      
      expect(page).to have_content(@comic_1.name)
      expect(page).to have_content(@comic_1.age)
    end


  end
end
