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
    # Everyone
    belongs_to :apartment,
        primary_key: :id,
        foreign_key: :apartment_id,
        class_name: 'Apartment'

    # Resident
    belongs_to :unit_type,
        primary_key: :id,
        foreign_key: :unit_type_id,
        class_name: 'UnitType'

    has_many :work_orders,
        primary_key: :id,
        foreign_key: :tenant_id,
        class_name: 'WorkOrder'

    # Employee
    has_one :employment, 
        primary_key: :id,
        foreign_key: :tenant_id,
        class_name: 'Employment'

    has_many :skills,
        primary_key: :id,
        foreign_key: :employee_id,
        class_name: 'EmployeeSkill'

    has_many :works_to_be_done,
        through: :skills,
        source: :work_orders

    # Owner
    has_many :apartments,
        primary_key: :id,
        foreign_key: :owner_id,
        class_name: 'Apartment'   

    has_many :employees,
        through: :apartments,
        source: :employees

    has_many :total_work_orders,
        through: :employees,
        source: :works_to_be_done

end
