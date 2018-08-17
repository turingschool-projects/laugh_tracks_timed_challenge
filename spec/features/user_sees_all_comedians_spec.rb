RSpec.describe "Comedians index page" do 
  
  context 'show all comedians' do 
    
    it 'should show all comedian names' do 
      comedian_1 = Comedian.create(name: 'Dolphi', age: 25)
      comedian_2 = Comedian.create(name: 'Erma', age: 20)
      
      visit '/comedians'
      
      expect(page).to have_content(@comedian_1.name)
      expect(page).to have_content(@comedian_2.name)
    end
     
    it 'should show all comedian ages' do 
      comedian_1 = Comedian.create(name: 'Dolphi', age: 25)
      comedian_2 = Comedian.create(name: 'Erma', age: 20)
      
      visit '/comedians'
      
      expect(page).to have_content(@comedian_1.age)
      expect(page).to have_content(@comedian_2.age)
    end
    
  end 
  
end
  
  
  