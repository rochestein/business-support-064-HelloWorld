require 'test_helper'

class WitnessEvidencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @witness_evidence = witness_evidences(:one)
  end

  test "should get index" do
    get witness_evidences_url
    assert_response :success
  end

  test "should get new" do
    get new_witness_evidence_url
    assert_response :success
  end

  test "should create witness_evidence" do
    assert_difference('WitnessEvidence.count') do
      post witness_evidences_url, params: { witness_evidence: { narration: @witness_evidence.narration, path_file: @witness_evidence.path_file, witness_id: @witness_evidence.witness_id } }
    end

    assert_redirected_to witness_evidence_url(WitnessEvidence.last)
  end

  test "should show witness_evidence" do
    get witness_evidence_url(@witness_evidence)
    assert_response :success
  end

  test "should get edit" do
    get edit_witness_evidence_url(@witness_evidence)
    assert_response :success
  end

  test "should update witness_evidence" do
    patch witness_evidence_url(@witness_evidence), params: { witness_evidence: { narration: @witness_evidence.narration, path_file: @witness_evidence.path_file, witness_id: @witness_evidence.witness_id } }
    assert_redirected_to witness_evidence_url(@witness_evidence)
  end

  test "should destroy witness_evidence" do
    assert_difference('WitnessEvidence.count', -1) do
      delete witness_evidence_url(@witness_evidence)
    end

    assert_redirected_to witness_evidences_url
  end
end
