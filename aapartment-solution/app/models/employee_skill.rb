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
    belongs_to :employee,
        primary_key: :id,
        foreign_key: :employee_id,
        class_name: 'Tenant'

    has_many :work_orders,
        primary_key: :id,
        foreign_key: :employee_skill_id,
        class_name: 'WorkOrder'
end
