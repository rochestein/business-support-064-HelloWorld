require "application_system_test_case"

class WitnessesTest < ApplicationSystemTestCase
  setup do
    @witness = witnesses(:one)
  end

  test "visiting the index" do
    visit witnesses_url
    assert_selector "h1", text: "Witnesses"
  end

  test "creating a Witness" do
    visit witnesses_url
    click_on "New Witness"

    fill_in "Complaint", with: @witness.complaint_id
    fill_in "User", with: @witness.user_id
    click_on "Create Witness"

    assert_text "Witness was successfully created"
    click_on "Back"
  end

  test "updating a Witness" do
    visit witnesses_url
    click_on "Edit", match: :first

    fill_in "Complaint", with: @witness.complaint_id
    fill_in "User", with: @witness.user_id
    click_on "Update Witness"

    assert_text "Witness was successfully updated"
    click_on "Back"
  end

  test "destroying a Witness" do
    visit witnesses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Witness was successfully destroyed"
  end
end
