# == Schema Information
#
# Table name: apartments
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  owner_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Apartment < ApplicationRecord
    belongs_to :owner,
        primary_key: :id,
        foreign_key: :owner_id,
        class_name: 'Tenant',
        optional: true

    has_many :tenants,
        primary_key: :id,
        foreign_key: :apartment_id,
        class_name: 'Tenant'

    has_many :employeements,
        through: :tenants,
        source: :employment

    has_many :employees,
        through: :employeements,
        source: :employee


end
