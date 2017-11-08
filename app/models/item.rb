class Item < ApplicationRecord
  validates :barcode, :title, :store_id, :quantity, presence: true
  validates_uniqueness_of :barcode, case_sensitive: false

end
