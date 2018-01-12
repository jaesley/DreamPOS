class Shipment < ApplicationRecord
  validates :date, :receiver_id presence: true

  mount_uploader :csv, CsvUploader
end
