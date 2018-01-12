require 'rails_helper'

RSpec.describe Shipment, type: :model do
  it { is_expected.to validate_presence_of :date }
  it { is_expected.to validate_presence_of :receiver }
  it { is_expected.to validate_presence_of :csv }
end
