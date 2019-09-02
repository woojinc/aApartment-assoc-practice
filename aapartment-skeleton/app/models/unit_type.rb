# == Schema Information
#
# Table name: unit_types
#
#  id           :bigint           not null, primary key
#  room_type    :string           not null
#  apartment_id :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class UnitType < ApplicationRecord
end
