class CreateWorkOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :work_orders do |t|
      t.integer :tenant_id, null: false
      t.integer :employee_skill_id, null: false
      t.timestamps
    end
    add_index :work_orders, :tenant_id
    add_index :work_orders, :employee_skill_id
  end
end
