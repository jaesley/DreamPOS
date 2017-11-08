class AddStoreIdToItem < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :store_id, :integer
  end
end
