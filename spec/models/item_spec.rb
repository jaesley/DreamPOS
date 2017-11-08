require 'rails_helper'

RSpec.describe Item, type: :model do
  let!(:item) { FactoryBot.create(:item) }

  context '#validations' do
    it { is_expected.to validate_presence_of :barcode }
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :quantity }
    it { is_expected.to validate_presence_of :store_id }

    it { is_expected.to validate_uniqueness_of(:barcode).case_insensitive }
  end

  context '#associations' do
    it { is_expected.to belong_to :store }
  end
end
