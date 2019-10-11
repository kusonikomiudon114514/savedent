require 'test_helper'

class MediationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mediation = mediations(:one)
  end

  test "should get index" do
    get mediations_url
    assert_response :success
  end

  test "should get new" do
    get new_mediation_url
    assert_response :success
  end

  test "should create mediation" do
    assert_difference('Mediation.count') do
      post mediations_url, params: { mediation: { name: @mediation.name } }
    end

    assert_redirected_to mediation_url(Mediation.last)
  end

  test "should show mediation" do
    get mediation_url(@mediation)
    assert_response :success
  end

  test "should get edit" do
    get edit_mediation_url(@mediation)
    assert_response :success
  end

  test "should update mediation" do
    patch mediation_url(@mediation), params: { mediation: { name: @mediation.name } }
    assert_redirected_to mediation_url(@mediation)
  end

  test "should destroy mediation" do
    assert_difference('Mediation.count', -1) do
      delete mediation_url(@mediation)
    end

    assert_redirected_to mediations_url
  end
end
