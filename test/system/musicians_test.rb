require "application_system_test_case"

class MusiciansTest < ApplicationSystemTestCase
  setup do
    @musician = musicians(:one)
  end

  test "visiting the index" do
    visit musicians_url
    assert_selector "h1", text: "Musicians"
  end

  test "should create musician" do
    visit musicians_url
    click_on "New musician"

    fill_in "First name", with: @musician.first_name
    fill_in "Instruments", with: @musician.instruments
    fill_in "Last name", with: @musician.last_name
    fill_in "Local area", with: @musician.local_area
    fill_in "Password", with: @musician.password
    fill_in "Username", with: @musician.username
    click_on "Create Musician"

    assert_text "Musician was successfully created"
    click_on "Back"
  end

  test "should update Musician" do
    visit musician_url(@musician)
    click_on "Edit this musician", match: :first

    fill_in "First name", with: @musician.first_name
    fill_in "Instruments", with: @musician.instruments
    fill_in "Last name", with: @musician.last_name
    fill_in "Local area", with: @musician.local_area
    fill_in "Password", with: @musician.password
    fill_in "Username", with: @musician.username
    click_on "Update Musician"

    assert_text "Musician was successfully updated"
    click_on "Back"
  end

  test "should destroy Musician" do
    visit musician_url(@musician)
    click_on "Destroy this musician", match: :first

    assert_text "Musician was successfully destroyed"
  end
end
