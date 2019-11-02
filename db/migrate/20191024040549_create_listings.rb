class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :headline, null: false
      t.text :description, null: false
      t.boolean :free_shipping
      t.float :price
      t.text :fine_print
      t.integer :external_id
      t.references :phone
      t.timestamps
    end
  end
end
