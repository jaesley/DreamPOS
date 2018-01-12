class CreateShipments < ActiveRecord::Migration[5.1]
  def change
    create_table :shipments do |t|
      t.date :date_received
      t.integer :receiver_id

      t.timestamps
    end
  end
end
