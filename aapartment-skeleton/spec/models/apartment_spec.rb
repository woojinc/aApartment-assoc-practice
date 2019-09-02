# == Schema Information
#
# Table name: apartments
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  owner_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Apartment, type: :model do
  subject(:apartment) { Apartment.first }
  subject(:employment) { Employment.first }

  it 'has a owner' do
    expect(apartment.owner.name).to eq('Julie Andrews')
  end

  it 'has tenants' do
    expect(apartment.tenants.count > 0).to be_truthy
  end

  it 'has employeements' do
    expect(apartment.employeements.first).to eq(employment)
  end

  it 'has employees' do
    expect(apartment.employees.first.name).to eq('Ralph')
  end

  describe 'validations' do
    it 'require apartment to have an owner' do
      expect do
        Apartment.create!(name: 'FullStackApartment')
      end.to_not raise_error
    end
  end
end
