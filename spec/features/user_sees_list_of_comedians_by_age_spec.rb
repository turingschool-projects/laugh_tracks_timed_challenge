RSpec.describe 'when visiting comedians/age' do
  context 'as a user' do
    it 'shows all comedians names whose age is equal to the query' do
      Comedian.create(name: 'Louis CK', age: 34)
      Comedian.create(name: 'George Carlin', age: 81)
      Comedian.create(name: 'The Funny Man', age: 34)

      visit '/comedians?age=34'
      save_and_open_page
      expect(page).to have_content('Louis CK')
      expect(page).to have_content('The Funny Man')
    end
  end
end
