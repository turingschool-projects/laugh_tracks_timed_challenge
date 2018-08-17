RSpec.describe 'Comedian index page' do
  context 'shows comedian details' do
    it 'should show all comedian names' do
      comedian_1 = Comedian.create(name: "Haro", age: 100)
      comedian_2 = Comedian.create(name: "Juki", age: 15)
      comedian_3 = Comedian.create(name: "Yaya", age: 45)

      visit '/comedians'
      # save_and_show_page

      expect(page).to have_content("Name: #{comedian_1.name}")
    end
    it 'should show all comedian specials' do
      comedian_1 = Comedian.create(name: "Haro", age: 100)
      comedian_2 = Comedian.create(name: "Juki", age: 15)
      comedian_3 = Comedian.create(name: "Yaya", age: 45)
      special_1 = Special.create(name: "Comedy Hour", comedian_id: 1)

      visit '/comedians'
      expect(page).to have_content("TV: #{comedian_1.special.name}")
    end

    it 'should show average age of comedians' do
      comedian_1 = Comedian.create(name: "Haro", age: 100)
      comedian_2 = Comedian.create(name: "Juki", age: 34)
      comedian_3 = Comedian.create(name: "Yaya", age: 45)

      visit '/comedians'

      expect(page).to have_content("Average age of comedians: #{Comedian.average_age}")
    end
  end
end
