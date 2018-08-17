RSpec.describe Comedian do
  describe 'Class Methods' do
    describe '.average_age' do
      it 'returns the average age of comedians' do
        Comedian.create(name: 'Mitch Hedberg', age: 48)
        Comedian.create(name: 'Mitchy Hedberg', age: 42)
        result = Comedian.average_age

        expect(result).to eq(45)
      end
    end
  end

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
end
