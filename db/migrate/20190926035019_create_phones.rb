class CreatePhones < ActiveRecord::Migration[5.2]
  def change
    create_table :phones do |t|
      t.string :model, null: false
      t.string :capacity, null: false
      t.string :original_carrier
      t.string :unlocked, default: false
      t.string  :battery
      t.string :screen_condition
      t.string :frame_condition
      t.integer :imei, null: false
      t.string :serial
      t.string :color
      t.string :source
      t.string :known_issues, array: true
      
      t.timestamps
    end
  end
end
