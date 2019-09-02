class CreateEmployments < ActiveRecord::Migration[6.0]
  def change
    create_table :employments do |t|
      t.integer :tenant_id, null: false
      t.timestamps
    end
    add_index :employments, :tenant_id
  end
end
