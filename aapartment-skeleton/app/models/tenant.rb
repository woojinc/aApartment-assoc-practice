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

class Tenant < ApplicationRecord
    
end
