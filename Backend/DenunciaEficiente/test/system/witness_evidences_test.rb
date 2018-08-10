require "application_system_test_case"

class WitnessEvidencesTest < ApplicationSystemTestCase
  setup do
    @witness_evidence = witness_evidences(:one)
  end

  test "visiting the index" do
    visit witness_evidences_url
    assert_selector "h1", text: "Witness Evidences"
  end

  test "creating a Witness evidence" do
    visit witness_evidences_url
    click_on "New Witness Evidence"

    fill_in "Narration", with: @witness_evidence.narration
    fill_in "Path File", with: @witness_evidence.path_file
    fill_in "Witness", with: @witness_evidence.witness_id
    click_on "Create Witness evidence"

    assert_text "Witness evidence was successfully created"
    click_on "Back"
  end

  test "updating a Witness evidence" do
    visit witness_evidences_url
    click_on "Edit", match: :first

    fill_in "Narration", with: @witness_evidence.narration
    fill_in "Path File", with: @witness_evidence.path_file
    fill_in "Witness", with: @witness_evidence.witness_id
    click_on "Update Witness evidence"

    assert_text "Witness evidence was successfully updated"
    click_on "Back"
  end

  test "destroying a Witness evidence" do
    visit witness_evidences_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Witness evidence was successfully destroyed"
  end
end
