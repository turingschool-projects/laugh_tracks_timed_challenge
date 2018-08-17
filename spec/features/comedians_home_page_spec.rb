RSpec.describe 'Comedians home page' do
  context 'as a visitor' do
    it 'should show all comedians' do
      comedian_1 = Comedian.create(name: 'Jim Carey', age: 54)
      comedian_2 = Comedian.create(name: 'Eddie Murphy', age: 56)

      visit '/comedians'

      expect(page).to have_content(comedian_1.name)
      expect(page).to have_content(comedian_2.name)
    end

    it 'should show a list of each comedians specials' do
      comedian_1 = Comedian.create(name: 'Jim Carey', age: 54)
      comedian_2 = Comedian.create(name: 'Eddie Murphy', age: 56)

      visit '/comedians'
      save_and_open_page
      expect(page).to have_content(comedian_1.specials.name)
    end
  end
end
