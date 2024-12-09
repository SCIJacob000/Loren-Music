# spec/requests/inquiries_spec.rb

require 'rails_helper'

RSpec.describe "Inquiries", type: :request do
  describe "GET /inquiries" do
    it "returns a successful response" do
      get inquiries_path
      expect(response).to be_successful
    end

    it "lists all inquiries" do
      create_list(:inquiry, 3)
      get inquiries_path
      expect(response.body).to include('Inquiries')
    end
  end

  describe "GET /inquiries/:id" do
    it "returns a successful response" do
      inquiry = create(:inquiry)
      get inquiry_path(inquiry)
      expect(response).to be_successful
    end
  end

  describe "POST /inquiries" do
    let(:valid_attributes) do
      {
        inquiry: {
          host_first_name: "John",
          host_last_name: "Doe",
          host_email: "john@example.com",
          host_phone_number: "123-456-7890",
          event_name: "Birthday Party",
          event_location: "123 Main St",
          event_date: Date.tomorrow,
          start_time: Time.current.noon,
          duration: 2,
          musician_id: create(:musician).id
        }
      }
    end

    context "with valid parameters" do
      it "creates a new Inquiry" do
        expect {
          post inquiries_path, params: valid_attributes
        }.to change(Inquiry, :count).by(1)
      end
    end

    context "with invalid parameters" do
      it "does not create a new Inquiry" do
        expect {
          post inquiries_path, params: { inquiry: { host_email: nil } }
        }.to change(Inquiry, :count).by(0)
      end
    end
  end

  describe "DELETE /inquiries/:id" do
    it "destroys the requested Inquiry" do
      inquiry = create(:inquiry)
      expect {
        delete inquiry_path(inquiry)
      }.to change(Inquiry, :count).by(-1)
    end
  end
end