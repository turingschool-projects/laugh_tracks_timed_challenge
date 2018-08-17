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
  describe 'Class Methods' do
      it 'returns average average age for all comedians' do
        comedian_1 = Comedian.create(name: 'John', age: 30)
        comedian_2 = Comedian.create(name: 'John', age: 50)

        expect(Comedian.average_age).to eq(40)

      end
  end
end
