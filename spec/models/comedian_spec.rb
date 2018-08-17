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
    it '.average_age' do
      comedian_1 = Comedian.create(name: "George Lopez", age: 56)
      comedian_2 = Comedian.create(name: "Ian Bagg",age: 44)

      expect(Comedian.average_age).to eq(50)
    end
  end
end
