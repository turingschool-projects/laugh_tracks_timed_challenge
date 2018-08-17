RSpec.describe 'Index' do
  describe 'Render' do
    it 'should show a list of all comedians' do
      comedian = Comedian.create(name: 'Patrick',
                                 age: 26)
      visit '/comedians'

      expect(page).to have_content(comedian.name)
      expect(page).to have_content(comedian.age)
    end
    it 'should restrict by age' do
      comedian1 = Comedian.create(name: 'Patrick',
                                 age: 26)
      comedian2 = Comedian.create(name: 'John',
                                 age: 30)

      visit '/comedians?age=26'

      expect(page).to have_content(comedian1.name)
      expect(page).to_not have_content(comedian2.name)
    end
    it 'should show average age' do
      comedian1 = Comedian.create(name: 'Patrick',
                                 age: 20)
      comedian2 = Comedian.create(name: 'John',
                                 age: 30)

      visit '/comedians'

      expect(page).to have_content("Average Age: #{(comedian1.age + comedian2.age) / 2}")
    end
    it 'should show specials for comedians' do
      comedian1 = Comedian.create(name: 'Patrick',
                                 age: 26)
      special = Special.create(name: 'Dog Party',
                            comedian_id: comedian1.id)

     visit '/comedians'
     expect(page).to have_content(special.name)
    end
    it 'should count the number of specials' do
      comedian1 = Comedian.create(name: 'Patrick',
                                 age: 26)
      Special.create(name: 'Dog Party',
                            comedian_id: comedian1.id)
      Special.create(name: 'Cat Party',
                            comedian_id: comedian1.id)

      visit '/comedians'

      expect(page).to have_content('Special Count: 2')
    end
  end
end
