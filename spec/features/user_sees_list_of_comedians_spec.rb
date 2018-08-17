RSpec.describe 'Comedian index page' do
  before(:each) do
    @comedian = Comedian.create(name: 'Joe', age: 32)
    @comedian = Comedian.create(name: 'Jim', age: 48)
  end
  context 'shows comedian details' do
    it 'should show comedian name' do
      visit '/comedians'

      expect(page).to have_content("Name: #{@comedian.name}")
    end
    it 'should show comedian age' do
      visit '/comedians'

      expect(page).to have_content("Age: #{@comedian.age}")
    end
    it 'should shows comedians specials' do
      visit '/comedians'

      expect(page).to have_content("Specials: #{@comedian.special.name}")
    end
    it 'should show all comedians average age' do
      visit '/comedians'

      expect(page).to have_content("AveAge: 40")
    end
  end
end
