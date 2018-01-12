require 'rails_helper'

RSpec.describe Shipment, type: :model do
  it { is_expected.to validate_presence_of :date_received }
  it { is_expected.to validate_presence_of :receiver_id }
  # it { is_expected.to validate_presence_of :csv }

  context '#associations' do
    it { is_expected.to belong_to(:receiver) }
  end
end
