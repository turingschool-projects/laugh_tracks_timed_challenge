RSpec.describe 'Comedian index page' do
  before(:each) do
    @comic_1 = Comedian.create(name: 'Mitch Hedberg', age: 48)
    @special_1 = @comic_1.specials.create(name: 'Christmas Special')
    @comic_2 = Comedian.create(name: 'Mitchy Hedberg', age: 42)
  end

  context 'shows comedian details' do
    it 'should show all comedian names' do
      visit '/comedians'

      expect(page).to have_content(@comic_1.name)
      expect(page).to have_content(@comic_2.name)
    end
    it 'should show all comedian ages' do
      visit '/comedians'

      expect(page).to have_content(@comic_1.age)
      expect(page).to have_content(@comic_2.age)
    end
  end
  context 'shows comedian TV specials' do
    it 'should show all comedian TV specials' do
      visit '/comedians'

    expect(page).to have_content(@comic_1.specials.name)
    end
  end
end
