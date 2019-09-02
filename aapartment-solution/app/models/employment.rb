# == Schema Information
#
# Table name: employments
#
#  id         :bigint           not null, primary key
#  tenant_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Employment < ApplicationRecord
    belongs_to :employee,
        primary_key: :id,
        foreign_key: :tenant_id,
        class_name: 'Tenant'

    has_many :skills,
        through: :employee,
        source: :skills

end
