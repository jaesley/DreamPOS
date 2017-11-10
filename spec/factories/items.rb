FactoryBot.define do
  factory :item do
    barcode { rand(00000000000000..99999999999999) }
    title { Faker::Book.title }
    quantity { rand(0..100) }
    issue { rand(1..999)}
    price { rand(4.99..24.99) }
    release_date { Time.at(rand * Time.now.to_i) }
    description { Faker::Hipster.paragraph }
  end
end
