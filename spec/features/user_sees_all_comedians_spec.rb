RSpec.describe 'Comedian index page' do 
  before(:each) do #synonymous to setup in minitest
    @c_1 = Comedian.create(name:'John Boy', age: 52)
    @c_2 = Comedian.create(name: 'Billy', age: 60) 
    @s_1 = Special.create(name: 'Goober', comedian_id: @c_1.id)
    @s_2 = Special.create(name: 'Goober Helper', comedian_id: @c_2.id)
    @s_3 = Special.create(name: 'Stop Helping', comedian_id: @c_1.id)
    @s_4 = Special.create(name: 'Say When!', comedian_id: @c_2.id)
  end
  
  context 'shows comedian details' do 
    it 'should show all comedian names' do  
      
      visit '/comedians' 
      
      expect(page).to have_content(@c_1.name)
      expect(page).to have_content(@c_2.name)
    end
    
    it 'should show all comedian ages' do 
      
      visit '/comedians' 
      save_and_open_page 
      
      expect(page).to have_content(@c_1.age)
      expect(page).to have_content(@c_2.age)
      
    end
    
    it 'should show all comedian specials' do 
      
      visit '/comedians' 
      save_and_open_page 
      
      expect(page).to have_content(@c_1.specials)
      expect(page).to have_content(@c_2.specials)
      
    end
    
    it 'should show avg comedian age' do 
      
      visit '/comedians' 
      save_and_open_page 
      
      expect(page).to have_content(comedians.average_age)
      
    end
       
  end 
end