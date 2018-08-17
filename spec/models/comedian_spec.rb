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
  describe 'Methods' do
    it 'should calculate average_age' do
      comedian_1 = Comedian.create(name: 'Ron', age:40)
      comedian_2 = Comedian.create(name: 'Sally', age:50)

      expect(Comedian.average_age).to eq(45)
    end
    # it 'returns list of specials' do
    #   comedian_1 = Comedian.create(name: 'Ron', age:40)
    #   special_1 = comedian_1.specials.create(name: "Rock on")
    #   special_2 = comedian_1.specials.create(name: "Cool")
    #
    #   expect(comedian_1.specials_report).to eq([name => "Rock on", "Cool"])
    # end

  end
end
