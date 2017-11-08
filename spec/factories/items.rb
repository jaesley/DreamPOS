FactoryBot.define do
  factory :item do
    barcode "01234"
    title "MyString"
    store factory: :store
  end
end
