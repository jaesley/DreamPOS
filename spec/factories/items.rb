FactoryBot.define do
  factory :item do
    barcode "01234"
    title "MyString"
    quantity 1
    store factory: :store
  end
end