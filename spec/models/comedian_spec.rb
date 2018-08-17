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

      it 'should average all the ages' do
        @comedian_1 = Comedian.create(name: "Ben", age: 26)
        @comedian_2 = Comedian.create(name: "Howard", age: 34)
        average_age = Comedian.all.average_age

        expect(average_age).to eq 30
      end
      # describe 'that it has a special' do
      #   it 'owns a specific special' do
      #     association = described_class.reflect_on_association(:specials)
      #     expect(association.macro).to eq :belongs_to
      #   end
      # end
    end
  end
end
