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

class WorkOrder < ApplicationRecord
    belongs_to :tenant,
        primary_key: :id,
        foreign_key: :tenant_id,
        class_name: 'Tenant'

    belongs_to :required_skill,
        primary_key: :id,
        foreign_key: :employee_skill_id,
        class_name: 'EmployeeSkill'
end
