RSpec.describe Comedian do
  describe 'Class Methods' do
    describe '.average_age' do
      it 'should return average age of all comedians' do
        Comedian.create(name: 'Name1', age: 20)
        Comedian.create(name: 'Name2', age: 45)
        Comedian.create(name: 'Name3', age: 62)

        expect(Comedian.average_age).to eq 42
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
    describe 'Associations' do
      it 'has many specials' do
        association = described_class.reflect_on_association(:specials)

        expect(association.macro).to eq :has_many
      end
    end
  end
end
