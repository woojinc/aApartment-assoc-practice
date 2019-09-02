# == Schema Information
#
# Table name: employee_skills
#
#  id          :bigint           not null, primary key
#  employee_id :integer          not null
#  skill       :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class EmployeeSkill < ApplicationRecord
end
