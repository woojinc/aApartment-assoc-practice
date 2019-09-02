class CreateTenants < ActiveRecord::Migration[6.0]
  def change
    create_table :tenants do |t|
      t.string :name, null: false
      t.integer :apartment_id, null: false
      t.integer :unit_type_id, null: false
      t.timestamps
    end
    add_index :tenants, :apartment_id
    add_index :tenants, :unit_type_id
  end
end
