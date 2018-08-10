require 'test_helper'

class PoliceUnitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @police_unit = police_units(:one)
  end

  test "should get index" do
    get police_units_url
    assert_response :success
  end

  test "should get new" do
    get new_police_unit_url
    assert_response :success
  end

  test "should create police_unit" do
    assert_difference('PoliceUnit.count') do
      post police_units_url, params: { police_unit: { name: @police_unit.name } }
    end

    assert_redirected_to police_unit_url(PoliceUnit.last)
  end

  test "should show police_unit" do
    get police_unit_url(@police_unit)
    assert_response :success
  end

  test "should get edit" do
    get edit_police_unit_url(@police_unit)
    assert_response :success
  end

  test "should update police_unit" do
    patch police_unit_url(@police_unit), params: { police_unit: { name: @police_unit.name } }
    assert_redirected_to police_unit_url(@police_unit)
  end

  test "should destroy police_unit" do
    assert_difference('PoliceUnit.count', -1) do
      delete police_unit_url(@police_unit)
    end

    assert_redirected_to police_units_url
  end
end
