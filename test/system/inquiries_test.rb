require "application_system_test_case"

class InquiriesTest < ApplicationSystemTestCase
  setup do
    @inquiry = inquiries(:one)
  end

  test "visiting the index" do
    visit inquiries_url
    assert_selector "h1", text: "Inquiries"
  end

  test "should create inquiry" do
    visit inquiries_url
    click_on "New inquiry"

    fill_in "Duration", with: @inquiry.duration
    fill_in "Event date", with: @inquiry.event_date
    fill_in "Event location", with: @inquiry.event_location
    fill_in "Event name", with: @inquiry.event_name
    fill_in "Host email", with: @inquiry.host_email
    fill_in "Host first name", with: @inquiry.host_first_name
    fill_in "Host last name", with: @inquiry.host_last_name
    fill_in "Host phone number", with: @inquiry.host_phone_number
    fill_in "Musician", with: @inquiry.musician_id
    fill_in "Start time", with: @inquiry.start_time
    click_on "Create Inquiry"

    assert_text "Inquiry was successfully created"
    click_on "Back"
  end

  test "should update Inquiry" do
    visit inquiry_url(@inquiry)
    click_on "Edit this inquiry", match: :first

    fill_in "Duration", with: @inquiry.duration
    fill_in "Event date", with: @inquiry.event_date
    fill_in "Event location", with: @inquiry.event_location
    fill_in "Event name", with: @inquiry.event_name
    fill_in "Host email", with: @inquiry.host_email
    fill_in "Host first name", with: @inquiry.host_first_name
    fill_in "Host last name", with: @inquiry.host_last_name
    fill_in "Host phone number", with: @inquiry.host_phone_number
    fill_in "Musician", with: @inquiry.musician_id
    fill_in "Start time", with: @inquiry.start_time
    click_on "Update Inquiry"

    assert_text "Inquiry was successfully updated"
    click_on "Back"
  end

  test "should destroy Inquiry" do
    visit inquiry_url(@inquiry)
    click_on "Destroy this inquiry", match: :first

    assert_text "Inquiry was successfully destroyed"
  end
end
