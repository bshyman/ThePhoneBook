class CreateBatches < ActiveRecord::Migration[5.2]
  def change
    create_table :batches do |t|
      t.string :label
      t.datetime :received_at
      t.string :source

      t.timestamps
    end
  end
end
