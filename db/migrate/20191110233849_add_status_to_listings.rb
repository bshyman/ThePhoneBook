class AddStatusToListings < ActiveRecord::Migration[5.2]
  def up
    add_column :listings, :status, :integer, default: 0
  end
  
  def down
    remove_column :listings, :status
  end
  
  
end
