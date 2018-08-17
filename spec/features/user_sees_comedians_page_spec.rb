RSpec.describe 'Comedian Index Page' do
  context 'Comedian Details' do
    before(:each) do
      @comedian1 = Comedian.create(name: 'Billy Crystal', age: 30)
      @special1 = @comedian1.specials.create(name: 'BC on TV')
      @special2 = @comedian1.specials.create(name: 'BC on TV pt 2')
      @comedian2 = Comedian.create(name: 'George Carlin', age: 55)
      @special3 = @comedian2.specials.create(name: 'GC on TV')
      @special4 = @comedian2.specials.create(name: 'GC on TV pt 2')
    end
    it 'shows comedian name and age' do
      visit '/comedians'

      expect(page).to have_content("Name: #{@comedian1.name}")
      expect(page).to have_content("Age: #{@comedian1.age}")
      expect(page).to have_content("Name: #{@comedian2.name}")
      expect(page).to have_content("Age: #{@comedian2.age}")
    end
    it 'shows comedians specials' do
      visit '/comedians'

      expect(page).to have_content("Specials: #{@special1.name}, #{@special2.name}")
      expect(page).to have_content("Specials: #{@special3.name}, #{@special4.name}")
    end
  end
end
