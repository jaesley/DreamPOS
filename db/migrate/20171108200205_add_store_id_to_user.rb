class AddStoreIdToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :store_id, :integer
  end
end
