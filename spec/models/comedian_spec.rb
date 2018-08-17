RSpec.describe Comedian do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        comic = Comedian.create(age: 48)
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing an age' do
        comic = Comedian.create(name: 'Mitch Hedberg')
        expect(comic).to_not be_valid
      end
      
    end
  end
  
  describe 'Class Methods'
    describe '.comedians_average_age' do
      it 'returns average age for all comedians' do
        Comedian.create(name: 'Dolphi', age: 25)
        Comedian.create(name: 'Erma', age: 20)
        Comedian.create(name: 'Hans', age: 30)

        result = Comedian.comedians_average_age
        
        expect(result).to eq(25)
      end
    end 
    
  
end


