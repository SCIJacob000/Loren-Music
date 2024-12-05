require 'rails_helper'

RSpec.describe Inquiry, type: :model do
  describe 'validations' do
    it 'is valid with all attributes' do
      inquiry = build(:inquiry)
      expect(inquiry).to be_valid
    end

    it 'is invalid without a host email' do
      inquiry = build(:inquiry, host_email: nil)
      expect(inquiry).not_to be_valid
    end

    it 'is invalid without an event date' do
      inquiry = build(:inquiry, event_date: nil)
      expect(inquiry).not_to be_valid
    end
  end

  describe 'associations' do
    it 'has a musician_id' do
      inquiry = create(:inquiry)
      expect(inquiry.musician_id).to be_present
    end
  end

  describe 'attributes' do
    it 'has the expected attributes' do
      inquiry = create(:inquiry)
      expect(inquiry.host_first_name).to be_present
      expect(inquiry.host_last_name).to be_present
      expect(inquiry.host_phone_number).to be_present
      expect(inquiry.event_name).to be_present
      expect(inquiry.event_location).to be_present
      expect(inquiry.start_time).to be_present
      expect(inquiry.duration).to be_between(1, 5)
    end
  end
end