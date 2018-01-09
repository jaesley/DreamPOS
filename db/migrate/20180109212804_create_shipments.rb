class CreateShipments < ActiveRecord::Migration[5.1]
  def change
    create_table :shipments do |t|
      t.string :item_code
      t.string :title
      t.integer :quantity
      t.decimal :price
      t.decimal :cost_per_unit
      t.decimal :total_cost
      t.integer :unknown_1
      t.integer :unknown_2
      t.string :publisher

      t.timestamps
    end
  end
end
