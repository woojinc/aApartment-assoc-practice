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
end
