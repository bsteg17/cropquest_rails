class CreateEquipmentItems < ActiveRecord::Migration
  def change
    create_table :equipment_items do |t|
      t.string :name
      t.string :serial
      t.date :purchase_date
      t.text :comments
      t.integer :user_id
      t.integer :equipment_type_id
      t.timestamps
    end
  end
end
