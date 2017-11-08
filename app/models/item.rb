class Item < ApplicationRecord
  validates :barcode, :title, :quantity, presence: true
  validates_uniqueness_of :barcode, case_sensitive: false

end
