require 'test_helper'

class NewpapersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @newpaper = newpapers(:one)
  end

  test "should get index" do
    get newpapers_url
    assert_response :success
  end

  test "should get new" do
    get new_newpaper_url
    assert_response :success
  end

  test "should create newpaper" do
    assert_difference('Newpaper.count') do
      post newpapers_url, params: { newpaper: { reportschool_id: @newpaper.reportschool_id, user_id: @newpaper.user_id } }
    end

    assert_redirected_to newpaper_url(Newpaper.last)
  end

  test "should show newpaper" do
    get newpaper_url(@newpaper)
    assert_response :success
  end

  test "should get edit" do
    get edit_newpaper_url(@newpaper)
    assert_response :success
  end

  test "should update newpaper" do
    patch newpaper_url(@newpaper), params: { newpaper: { reportschool_id: @newpaper.reportschool_id, user_id: @newpaper.user_id } }
    assert_redirected_to newpaper_url(@newpaper)
  end

  test "should destroy newpaper" do
    assert_difference('Newpaper.count', -1) do
      delete newpaper_url(@newpaper)
    end

    assert_redirected_to newpapers_url
  end
end
