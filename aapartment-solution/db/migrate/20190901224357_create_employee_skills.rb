class CreateEmployeeSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :employee_skills do |t|
      t.integer :employee_id, null: false
      t.string :skill, null: false
      t.timestamps
    end
    add_index :employee_skills, :employee_id
  end
end
