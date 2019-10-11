require 'test_helper'

class RirekisyosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rirekisyo = rirekisyos(:one)
  end

  test "should get index" do
    get rirekisyos_url
    assert_response :success
  end

  test "should get new" do
    get new_rirekisyo_url
    assert_response :success
  end

  test "should create rirekisyo" do
    assert_difference('Rirekisyo.count') do
      post rirekisyos_url, params: { rirekisyo: { hizuke: @rirekisyo.hizuke, title: @rirekisyo.title } }
    end

    assert_redirected_to rirekisyo_url(Rirekisyo.last)
  end

  test "should show rirekisyo" do
    get rirekisyo_url(@rirekisyo)
    assert_response :success
  end

  test "should get edit" do
    get edit_rirekisyo_url(@rirekisyo)
    assert_response :success
  end

  test "should update rirekisyo" do
    patch rirekisyo_url(@rirekisyo), params: { rirekisyo: { hizuke: @rirekisyo.hizuke, title: @rirekisyo.title } }
    assert_redirected_to rirekisyo_url(@rirekisyo)
  end

  test "should destroy rirekisyo" do
    assert_difference('Rirekisyo.count', -1) do
      delete rirekisyo_url(@rirekisyo)
    end

    assert_redirected_to rirekisyos_url
  end
end
