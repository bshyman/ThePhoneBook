class CreatePhoneTranzactions < ActiveRecord::Migration[5.2]
  def change
    create_table :phone_tranzactions do |t|
      t.references :phone, null: false
      t.references :tranzaction, null: false
      t.timestamps
    end
  end
end
