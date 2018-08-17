RSpec.describe 'Search for specific age' do
  it 'should show only comedians of given age' do
    comedian_1 = Comedian.create(name: "George Lopez", age: 56)
    comedian_2 = Comedian.create(name: "Ian Bagg",age: 44)

   visit '/comedians?age=44'
 save_and_open_page
 
   expect(page).to have_content("Ian Bagg")
   expect(page).to_not have_content("George Lopez")
  end
end
