RSpec.describe 'Comedians page' do
  describe 'as a visitor' do
    it 'should display a list of comedians with their name and age' do
      @comedian_1 = Comedian.create(name: "Ben", age: 26)
      @comedian_2 = Comedian.create(name: "Howard", age: 34)

      visit '/comedians'

      expect(page).to have_content("Name: #{@comedian_1.name}")
      expect(page).to have_content("Name: #{@comedian_2.name}")
    end

    it 'should display a list of each comedians TV specials' do
      @comedian_1 = Comedian.create(name: "Ben", age: 26)
      @comedian_2 = Comedian.create(name: "Howard", age: 34)

      visit '/comedians'

      expect(page).to have_content("Special: #{@comedian_1.special}")
      expect(page).to have_content("Special: #{@comedian_2.special}")
    end

    it 'should display the average age for all comedians' do
      @comedian_1 = Comedian.create(name: "Ben", age: 26)
      @comedian_2 = Comedian.create(name: "Howard", age: 34)
      average_age = Comedian.all.average_age

      visit '/comedians'

      expect(page).to have_content("Average Age: #{average_age}")
    end
  end
end
