# == Schema Information
#
# Table name: employee_skills
#
#  id          :bigint           not null, primary key
#  skill       :string           not null
#  employee_id :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

RSpec.describe EmployeeSkill, type: :model do
  subject(:employee_skill) { EmployeeSkill.first }

  it 'has a employee' do
    expect(employee_skill.employee.name).to eq('Ralph')
  end

  describe 'validations' do
    it 'require employee skill to have a employee' do
      expect do
        EmployeeSkill.create!(skill: 'fly')
      end.to raise_error.with_message(/must exist/)
    end
  end
end