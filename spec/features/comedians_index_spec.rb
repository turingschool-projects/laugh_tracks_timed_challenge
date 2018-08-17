RSpec.describe 'Comedians Index Page' do
  context 'a vistor to the page' do
    it 'should show all comdians' do
      comedian_1 = Comedian.create(name: "George Lopez", age: 56)
      comedian_2 = Comedian.create(name: "Ian Bagg",age: 43)

      visit '/comedians'

      expect(page).to have_content("George Lopez")
      expect(page).to have_content("Age: 43")
    end
  end
end
