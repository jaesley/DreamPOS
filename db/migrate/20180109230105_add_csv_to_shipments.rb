class AddCsvToShipments < ActiveRecord::Migration[5.1]
  def change
    add_column :shipments, :csv, :string
  end
end
