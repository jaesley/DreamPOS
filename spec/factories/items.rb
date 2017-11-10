FactoryBot.define do
  factory :item do
    barcode { rand(00000000000000..99999999999999) }
    title { Faker::Book.title }
    quantity { rand(0..100) }
  end
end
