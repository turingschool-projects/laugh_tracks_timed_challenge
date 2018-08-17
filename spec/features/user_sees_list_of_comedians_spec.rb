RSpec.describe 'When visiting /comedians' do
  context 'as a visitor' do
    it 'shows a list of comedians' do
      Comedian.create(name: 'Louis CK', age: 47)
      Comedian.create(name: 'George Carlin', age: 81)

      visit '/comedians'
      expect(page).to have_content('Louis CK')
      expect(page).to have_content('81')
    end
    it 'shows a list of their specials' do
      Comedian.create(name: 'Louis CK', age: 47)
      Comedian.create(name: 'George Carlin', age: 81)
      Special.create(name: 'Louis', comedian_id: 1)
      Special.create(name: 'You Are All Diseased', comedian_id: 2)

      visit '/comedians'
      expect(page).to have_content('Louis')
      expect(page).to have_content('You Are All Diseased')
    end
    it 'shows the average age for all comedians' do
      Comedian.create(name: 'Louis CK', age: 47)
      Comedian.create(name: 'George Carlin', age: 81)
      Special.create(name: 'Louis', comedian_id: 1)
      Special.create(name: 'You Are All Diseased', comedian_id: 2)

      visit '/comedians'
      expect(page).to have_content('Average age: 64')
    end
    it 'shows the count of TV Specials for each comedian' do
      Comedian.create(name: 'Louis CK', age: 47)
      Comedian.create(name: 'George Carlin', age: 81)
      Special.create(name: 'Louis', comedian_id: 1)
      Special.create(name: 'You Are All Diseased', comedian_id: 2)
      Special.create(name: 'Complaints and Grievances', comedian_id: 2)

      visit '/comedians'
      expect(page).to have_content('George Carlin has 2 specials')
    end
  end
end
