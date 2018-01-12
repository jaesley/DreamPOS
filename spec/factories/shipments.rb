FactoryBot.define do
  factory :shipment do
    date_received Date.today
    receiver_id 1
  end
end
