require 'test_helper'

class MensetusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mensetu = mensetus(:one)
  end

  test "should get index" do
    get mensetus_url
    assert_response :success
  end

  test "should get new" do
    get new_mensetu_url
    assert_response :success
  end

  test "should create mensetu" do
    assert_difference('Mensetu.count') do
      post mensetus_url, params: { mensetu: { name: @mensetu.name, start_time: @mensetu.start_time } }
    end

    assert_redirected_to mensetu_url(Mensetu.last)
  end

  test "should show mensetu" do
    get mensetu_url(@mensetu)
    assert_response :success
  end

  test "should get edit" do
    get edit_mensetu_url(@mensetu)
    assert_response :success
  end

  test "should update mensetu" do
    patch mensetu_url(@mensetu), params: { mensetu: { name: @mensetu.name, start_time: @mensetu.start_time } }
    assert_redirected_to mensetu_url(@mensetu)
  end

  test "should destroy mensetu" do
    assert_difference('Mensetu.count', -1) do
      delete mensetu_url(@mensetu)
    end

    assert_redirected_to mensetus_url
  end
end
