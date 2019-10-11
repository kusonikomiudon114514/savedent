require 'test_helper'

class RecommendedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recommended = recommendeds(:one)
  end

  test "should get index" do
    get recommendeds_url
    assert_response :success
  end

  test "should get new" do
    get new_recommended_url
    assert_response :success
  end

  test "should create recommended" do
    assert_difference('Recommended.count') do
      post recommendeds_url, params: { recommended: { name: @recommended.name } }
    end

    assert_redirected_to recommended_url(Recommended.last)
  end

  test "should show recommended" do
    get recommended_url(@recommended)
    assert_response :success
  end

  test "should get edit" do
    get edit_recommended_url(@recommended)
    assert_response :success
  end

  test "should update recommended" do
    patch recommended_url(@recommended), params: { recommended: { name: @recommended.name } }
    assert_redirected_to recommended_url(@recommended)
  end

  test "should destroy recommended" do
    assert_difference('Recommended.count', -1) do
      delete recommended_url(@recommended)
    end

    assert_redirected_to recommendeds_url
  end
end
