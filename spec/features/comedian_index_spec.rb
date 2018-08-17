RSpec.describe 'Comedian index page' do
  before(:each) do
    iliza = Comedian.create(name: "Iliza Shlesinger", age: 34)
    ali = Comedian.create(name: "Ali Wong", age: 35)
  end

  it 'should show comedian name' do
    visit "/comedians"
    expect(page).to have_content('Iliza')
    expect(page).to_not have_content('Hannibal')
  end

  it 'should show comedian age' do
    visit "/comedians"
    expect(page).to have_content('34')
    expect(page).to_not have_content('36')
  end

end
