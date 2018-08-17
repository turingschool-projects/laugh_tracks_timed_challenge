RSpec.describe Special do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        special = Special.create
        expect(special).to_not be_valid
      end
    end
  end
  describe 'class methods' do
    it 'should get specials by comedian id' do
      comedian = Comedian.create(name: 'Patrick',
                                 age: 26)
      special1 = Special.create(name: 'Dog Party',
                     comedian_id: comedian.id)
      Special.create(name: 'Cat Party',
                    comedian_id: 2)

      result = Special.comedian_specials(comedian.id)

      expect(result.first.name).to eq(special1.name)
    end
  end
end
