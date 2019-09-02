# == Schema Information
#
# Table name: tenants
#
#  id           :bigint           not null, primary key
#  name         :string           not null
#  apartment_id :integer          not null
#  unit_type_id :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'rails_helper'

RSpec.describe Tenant, type: :model do

  describe 'resident' do
    subject(:resident) { Tenant.find_by(name: 'Contractor') }

    it 'has an apartment' do
      expect(resident.apartment.name).to eq('aApartment')
    end

    it 'has a unit type' do
      expect(resident.unit_type.room_type).to eq('studio')
    end

    it 'has work_orders' do
      expect(resident.work_orders.count > 0).to be_truthy
    end

  end

  describe 'employee' do
    subject(:employee) { Tenant.find_by(name: 'Ralph') }
    subject(:employment) { Employment.find_by(tenant_id: employee.id)}

    it 'has an apartment' do
      expect(employee.apartment.name).to eq('aApartment')
    end

    it 'has an employment' do
      expect(employee.employment.id).to eq(employment.id)
    end

    it 'has skills' do
      expect(employee.skills.count > 0).to be_truthy
    end

    it 'has works_to_be_done' do
      expect(employee.works_to_be_done.count).to eq(1)
    end

  end

  describe 'owner' do
    subject(:owner) { Tenant.first }

    it 'has apartments' do
      apartments = owner.apartments
      expect(apartments.count > 0).to be_truthy
    end

    it 'has employees' do
      expect(owner.employees.count > 0).to be_truthy
    end

    it 'has total_work_orders' do
      expect(owner.total_work_orders.count).to eq(2)
    end
  end
end