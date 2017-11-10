class Item < ApplicationRecord
  validates :barcode, :title, :quantity, presence: true
  validates_uniqueness_of :barcode, case_sensitive: false

  def self.search(query)
    sanitized_query = query.downcase.gsub(/[%_]/, '\\\\\0')
    Item.where(Item.arel_table[:title].lower.matches("%#{sanitized_query}%").or(Item.arel_table[:barcode].matches("%#{sanitized_query}%")))
  end
end
