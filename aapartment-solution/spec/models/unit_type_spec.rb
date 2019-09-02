# == Schema Information
#
# Table name: unit_types
#
#  id           :bigint           not null, primary key
#  apartment_id :integer          not null
#  room_type    :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'rails_helper'

RSpec.describe UnitType, type: :model do
  subject(:unit_type) { UnitType.first }

  it 'has an apartment' do
    expect(unit_type.apartment.name).to eq('aApartment')
  end

  it 'has tenants' do
    expect(unit_type.tenants.count > 0).to be_truthy
  end

  describe 'validations' do
    it 'require unit_type to have an apartment' do
      expect do
        UnitType.create!(room_type: 'studio')
      end.to raise_error.with_message(/must exist/)
    end
  end
end
