class Shipment < ApplicationRecord
  validates :item_code, :title, :quantity, :price, :cost_per_unit, :total_cost, :unknown_1, :unknown_2, :publisher, :csv, presence: true

  validates :item_code, uniqueness: true

  mount_uploader :csv, CsvUploader
end
