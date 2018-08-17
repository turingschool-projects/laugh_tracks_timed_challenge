RSpec.describe 'Comedian index page' do
  before(:each) do
    @comedian_1 = Comedian.create(name: 'Lou', age: 24)
    @comedian_2 = Comedian.create(name: 'Bobbi', age: 35)
  end
  it 'should show all comedian names' do
      visit '/comedians'

      expect(page).to have_content(@comedian_1.name)
      expect(page).to have_content(@comedian_2.name)
    end
  it 'should show all comedian ages' do
      visit '/comedians'

      expect(page).to have_content(@comedian_1.age)
      expect(page).to have_content(@comedian_2.age)
    end
end
