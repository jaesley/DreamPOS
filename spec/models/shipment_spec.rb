require 'rails_helper'

RSpec.describe Shipment, type: :model do
  it { is_expected.to validate_presence_of :item_code }
  it { is_expected.to validate_presence_of :title }
  it { is_expected.to validate_presence_of :quantity }
  it { is_expected.to validate_presence_of :price }
  it { is_expected.to validate_presence_of :cost_per_unit }
  it { is_expected.to validate_presence_of :total_cost }
  it { is_expected.to validate_presence_of :unknown_1 }
  it { is_expected.to validate_presence_of :unknown_2 }
  it { is_expected.to validate_presence_of :publisher }

  it { is_expected.to validate_uniqueness_of(:item_code) }
end
