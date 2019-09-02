# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
    puts 'Beginning to seed'

    Apartment.destroy_all
    UnitType.destroy_all
    Tenant.destroy_all
    Employment.destroy_all
    EmployeeSkill.destroy_all
    WorkOrder.destroy_all

    apt = Apartment.create!(name: 'aApartment')
    
    studio = UnitType.create!(room_type: 'studio', apartment_id: apt.id)
    one_bed = UnitType.create!(room_type: 'one bed', apartment_id: apt.id)
    two_bed = UnitType.create!(room_type: 'two bed', apartment_id: apt.id)
    penthouse = UnitType.create!(room_type: 'penthouse', apartment_id: apt.id)

    owner = Tenant.create!(name: 'Julie Andrews', apartment_id: apt.id, unit_type_id: penthouse.id)

    apt.update!(owner_id: owner.id)

    resident1 = Tenant.create!(name: 'Contractor', apartment_id: apt.id, unit_type_id: studio.id)
    resident2 = Tenant.create!(name: 'Developer', apartment_id: apt.id, unit_type_id: one_bed.id)

    employee1 = Tenant.create!(name: 'Ralph', apartment_id: apt.id, unit_type_id: one_bed.id)
    employee2 = Tenant.create!(name: 'Felix', apartment_id: apt.id, unit_type_id: two_bed.id)

    employment1 = Employment.create!(tenant_id: employee1.id)
    employment2 = Employment.create!(tenant_id: employee2.id)

    employ_skill1 = EmployeeSkill.create!(skill: 'Wreck it!', employee_id: employee1.id)
    employ_skill2 = EmployeeSkill.create!(skill: 'Fix it!', employee_id: employee2.id)

    work_order1 = WorkOrder.create!(tenant_id: resident1.id, employee_skill_id: employ_skill1.id)
    work_order2 = WorkOrder.create!(tenant_id: resident2.id, employee_skill_id: employ_skill2.id)

    puts 'Finished seeding'

end