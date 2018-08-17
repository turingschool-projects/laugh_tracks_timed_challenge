RSpec.describe 'Comedian index page' do
  before(:each) do
    iliza = Comedian.create(name: "Iliza Shlesinger", age: 34)
    Special.create(name: "War Paint", comedian_id: iliza.id)
    Special.create(name: "Freezing Hot", comedian_id: iliza.id)
    Special.create(name: "Confirmed Kills", comedian_id: iliza.id)

    ali = Comedian.create(name: "Ali Wong", age: 35)
    Special.create(name: "Baby Cobra", comedian_id: ali.id)

  end

  it 'should show comedian name' do
    visit "/comedians"
    expect(page).to have_content('Iliza')
    expect(page).to_not have_content('Hannibal')
  end

  it 'should show comedian age' do
    visit "/comedians"

    save_and_open_page
    expect(page).to have_content('34')
    expect(page).to_not have_content('36')
  end

end
