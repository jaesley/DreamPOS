require 'rails_helper'

RSpec.describe Item, type: :model do
  let!(:item) { FactoryBot.create(:item) }

  context '#validations' do
    it { is_expected.to validate_presence_of :barcode }
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :quantity }
    it { is_expected.to validate_presence_of :issue }
    it { is_expected.to validate_presence_of :price }
    it { is_expected.to validate_presence_of :description }
    it { is_expected.to validate_presence_of :release_date }

    it { is_expected.to validate_uniqueness_of(:barcode).case_insensitive }
  end

  context '#associations' do
  end
end
