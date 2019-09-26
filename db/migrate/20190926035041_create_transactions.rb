class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.float :total
      t.float :subtotal
      t.float :insurance, default: 0.0
      t.float :shipping_cost
      t.string :shipping_method
      t.date :ship_date
      t.string :tracking
      t.string :buyer_name
      t.string :buyer_address
      t.string :buyer_address2
      t.string :buyer_city
      t.string :buyer_state
      t.string :buyer_postal
      t.string :buyer_email
      t.string :source
      t.datetime :sale_time
      t.string :external_id
      t.string :payment_method
      t.timestamps
    end
  end
end
