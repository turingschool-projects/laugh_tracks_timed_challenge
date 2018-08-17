RSpec.describe Comedian do
  describe "Class methods" do
    describe '.average_age' do
      it 'returns average age for all comedians' do
        iliza = Comedian.create(name: "Iliza Shlesinger", age: 33)
        ali = Comedian.create(name: "Ali Wong", age: 35)

        expect(Comedian.average_age).to eq(34)
      end
    end
  end


  describe 'Validations' do
    it "has many specials" do
      association = Comedian.reflect_on_association(:specials)
      expect(association.macro).to eq :has_many
    end

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
