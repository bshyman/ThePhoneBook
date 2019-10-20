class AddBatchIdToPhones < ActiveRecord::Migration[5.2]
  def change
    add_reference :phones, :batch, foreign_key: true
  end
end
