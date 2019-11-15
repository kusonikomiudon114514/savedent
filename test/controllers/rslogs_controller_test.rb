require 'test_helper'

class RslogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rslog = rslogs(:one)
  end

  test "should get index" do
    get rslogs_url
    assert_response :success
  end

  test "should get new" do
    get new_rslog_url
    assert_response :success
  end

  test "should create rslog" do
    assert_difference('Rslog.count') do
      post rslogs_url, params: { rslog: { reportschool_id: @rslog.reportschool_id, user_id: @rslog.user_id } }
    end

    assert_redirected_to rslog_url(Rslog.last)
  end

  test "should show rslog" do
    get rslog_url(@rslog)
    assert_response :success
  end

  test "should get edit" do
    get edit_rslog_url(@rslog)
    assert_response :success
  end

  test "should update rslog" do
    patch rslog_url(@rslog), params: { rslog: { reportschool_id: @rslog.reportschool_id, user_id: @rslog.user_id } }
    assert_redirected_to rslog_url(@rslog)
  end

  test "should destroy rslog" do
    assert_difference('Rslog.count', -1) do
      delete rslog_url(@rslog)
    end

    assert_redirected_to rslogs_url
  end
end
