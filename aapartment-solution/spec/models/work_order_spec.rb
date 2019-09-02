# == Schema Information
#
# Table name: work_orders
#
#  id                :bigint           not null, primary key
#  tenant_id         :integer          not null
#  employee_skill_id :integer          not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

RSpec.describe WorkOrder, type: :model do
  subject(:work_order) { WorkOrder.first }

  it 'has a tenant' do
    expect(work_order.tenant.name).to eq('Contractor')
  end

  it 'has required_skill' do
    expect(work_order.required_skill.skill).to eq('Wreck it!')
  end

  describe 'validations' do
    it 'require work order to have a resident' do
      expect do
        employee_skill1 = EmployeeSkill.first
        WorkOrder.create!(employee_skill_id: employee_skill1.id)
      end.to raise_error.with_message(/must exist/)
    end
  end


end