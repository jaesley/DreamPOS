class Item < ApplicationRecord
  validates :barcode, :title, :store_id, presence: true

  belongs_to :store
end
