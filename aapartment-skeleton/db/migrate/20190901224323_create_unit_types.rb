class CreateUnitTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :unit_types do |t|
      t.string :room_type, null: false
      t.integer :apartment_id, null: false
      t.timestamps
    end
    add_index :unit_types, :apartment_id
  end
end
