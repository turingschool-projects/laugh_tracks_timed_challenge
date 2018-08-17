RSpec.describe 'Comedian Index Page' do
  before(:each) do
    @comedian_1 = Comedian.create(name: 'Barb', age: 30)
    @comedian_2 = Comedian.create(name: 'Bert', age: 50)
    @special_1 = @comedian_1.specials.create(name: 'Best Special Ever')
    @special_3 = @comedian_2.specials.create(name: 'Biggest Special')
  end
  it 'shows a list of all comedians' do
    visit '/comedians'

    expect(page).to have_content(@comedian_1.name)
    expect(page).to have_content(@comedian_2.name)
  end
  it 'shows a list of all of comedians specials' do
    visit '/comedians'

    expect(page).to have_content(@comedian_1.specials)
    expect(page).to have_content(@comedian_2.specials)
  end
  it 'shows a count of specials for each comedian' do
    visit '/comedians'

    expect(page).to have_content()
  end
  it 'shows a the average age of all comedians' do
    visit '/comedians'

    expect(page).to have_content('Average Age: 40')
  end
  it 'shows all comedians with age of 34' do
    visit '/comedians'

    expect(page).to_not have_content('Age: 34')
  end
end
