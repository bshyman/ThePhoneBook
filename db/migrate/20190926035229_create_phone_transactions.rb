class CreatePhoneTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :phone_transactions do |t|
      t.references :phone
      t.references :transaction
      t.timestamps
    end
  end
end
