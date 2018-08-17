RSpec.describe 'Comedian Index Page' do
  before(:each) do
    @comedian_1 = Comedian.create(name: 'CC', age: 30)
    @comedian_2 = Comedian.create(name: 'DD', age: 30)
    visit '/comedians'
  end
  context 'Shows All Comedians Details' do
    it 'shows comedian name' do
      expect(page).to have_content(@comedian_1.name)
      expect(page).to have_content(@comedian_2.name)
    end
    it 'shows comedian name' do
      expect(page).to have_content(@comedian_1.age)
      expect(page).to have_content(@comedian_2.age)
    end
  end
end
