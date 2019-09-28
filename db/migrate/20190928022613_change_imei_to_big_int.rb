class ChangeImeiToBigInt < ActiveRecord::Migration[5.2]
  def change
    change_column :phones, :imei, :bigint
  end
end
