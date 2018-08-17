RSpec.describe Special do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        special = Special.create
        expect(special).to_not be_valid
      end
    end
    describe 'Associations' do
      it 'has one comedian' do
        association = described_class.reflect_on_association(:comedian)

        expect(association.macro).to eq :belongs_to
      end
    end
  end
end
