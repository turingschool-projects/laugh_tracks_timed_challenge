RSpec.describe 'Comedians home page' do
  context 'as a visitor' do
    it 'should show all comedians' do
      comedian_1 = Comedian.create(name: 'Jim Carey', age: 54)
      comedian_2 = Comedian.create(name: 'Eddie Murphy', age: 56)

      visit '/comedians'

      expect(page).to have_content(comedian_1.name)
      expect(page).to have_content(comedian_2.name)
      expect(page).to have_content("Age: #{comedian_1.age}")
      expect(page).to have_content("Age: #{comedian_2.age}")
    end

    it 'should show a list of each comedians specials' do
      comedian_1 = Comedian.create(name: 'Jim Carey', age: 54)
      comedian_2 = Comedian.create(name: 'Eddie Murphy', age: 56)

      special_1 = comedian_1.specials.create(name: "Jim's Special")
      special_2 = comedian_2.specials.create(name: "Eddie's Special")


      visit '/comedians'
      
      expect(page).to have_content("Jim's Special")
      expect(page).to have_content("Eddie's Special")
    end
  end
end
