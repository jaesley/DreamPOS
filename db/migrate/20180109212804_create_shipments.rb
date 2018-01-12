class CreateShipments < ActiveRecord::Migration[5.1]
  def change
    create_table :shipments do |t|
      t.string :date
      t.string :receiver_id

      t.timestamps
    end
  end
end
