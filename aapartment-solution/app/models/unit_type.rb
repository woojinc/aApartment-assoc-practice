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
    belongs_to :apartment,
        primary_key: :id,
        foreign_key: :apartment_id,
        class_name: 'Apartment'

    has_many :tenants,
        primary_key: :id,
        foreign_key: :unit_type_id,
        class_name: 'Tenant'
end
