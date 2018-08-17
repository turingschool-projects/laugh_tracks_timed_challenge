RSpec.describe 'Comedians Index Page' do
  context 'a vistor to the page' do
    before(:each) do
      @comedian_1 = Comedian.create(name: "George Lopez", age: 56)
      @comedian_2 = Comedian.create(name: "Ian Bagg",age: 44)
      @special_1 = Special.create(name: "Laughs", comedian_id: 1)
      @special_2 = Special.create(name: "Funny", comedian_id: 2)

    end
    it 'should show all comedians names, ages, specials' do

      visit '/comedians'

      expect(page).to have_content("George Lopez")
      expect(page).to have_content("Age: 44")
      expect(page).to have_content("Funny")
    end

    it 'should show average comedian age' do
      visit '/comedians'

      expect(page).to have_content("Average Age: 50")
    end
  end
end
