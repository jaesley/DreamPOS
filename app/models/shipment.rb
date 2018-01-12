class Shipment < ApplicationRecord
  validates :date_received, :receiver_id, presence: true

  belongs_to :receiver, class_name: 'User', foreign_key: 'receiver_id'

  mount_uploader :csv, CsvUploader
end
