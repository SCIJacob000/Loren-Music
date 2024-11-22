require "test_helper"

class InquiriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inquiry = inquiries(:one)
  end

  test "should get index" do
    get inquiries_url
    assert_response :success
  end

  test "should get new" do
    get new_inquiry_url
    assert_response :success
  end

  test "should create inquiry" do
    assert_difference("Inquiry.count") do
      post inquiries_url, params: { inquiry: { duration: @inquiry.duration, event_date: @inquiry.event_date, event_location: @inquiry.event_location, event_name: @inquiry.event_name, host_email: @inquiry.host_email, host_first_name: @inquiry.host_first_name, host_last_name: @inquiry.host_last_name, host_phone_number: @inquiry.host_phone_number, musician_id: @inquiry.musician_id, start_time: @inquiry.start_time } }
    end

    assert_redirected_to inquiry_url(Inquiry.last)
  end

  test "should show inquiry" do
    get inquiry_url(@inquiry)
    assert_response :success
  end

  test "should get edit" do
    get edit_inquiry_url(@inquiry)
    assert_response :success
  end

  test "should update inquiry" do
    patch inquiry_url(@inquiry), params: { inquiry: { duration: @inquiry.duration, event_date: @inquiry.event_date, event_location: @inquiry.event_location, event_name: @inquiry.event_name, host_email: @inquiry.host_email, host_first_name: @inquiry.host_first_name, host_last_name: @inquiry.host_last_name, host_phone_number: @inquiry.host_phone_number, musician_id: @inquiry.musician_id, start_time: @inquiry.start_time } }
    assert_redirected_to inquiry_url(@inquiry)
  end

  test "should destroy inquiry" do
    assert_difference("Inquiry.count", -1) do
      delete inquiry_url(@inquiry)
    end

    assert_redirected_to inquiries_url
  end
end
