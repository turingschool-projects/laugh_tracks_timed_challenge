RSpec.describe 'Comedian Index Page' do
  before(:each) do
    @comedian = Comedian.create( name: 'Patrick', age:40 )
    @comedian = Comedian.create( name: 'Kevin', age:30 )
  end

  context 'List all comedians' do
    it 'It should show all comedians' do

      visit '/comedians'

      expect(page).to have_content(@comedian_1)
      expect(page).to have_content(@comedian_2)
    end
  end
end
