class CreateApartments < ActiveRecord::Migration[6.0]
  def change
    create_table :apartments do |t|
      t.string :name, null: false
      t.integer :owner_id
      t.timestamps
    end
    add_index :apartments, :owner_id
  end
end
