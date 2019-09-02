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
end
