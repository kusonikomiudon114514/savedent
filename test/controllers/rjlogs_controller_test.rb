require 'test_helper'

class RjlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rjlog = rjlogs(:one)
  end

  test "should get index" do
    get rjlogs_url
    assert_response :success
  end

  test "should get new" do
    get new_rjlog_url
    assert_response :success
  end

  test "should create rjlog" do
    assert_difference('Rjlog.count') do
      post rjlogs_url, params: { rjlog: { reportjob_id: @rjlog.reportjob_id, user_id: @rjlog.user_id } }
    end

    assert_redirected_to rjlog_url(Rjlog.last)
  end

  test "should show rjlog" do
    get rjlog_url(@rjlog)
    assert_response :success
  end

  test "should get edit" do
    get edit_rjlog_url(@rjlog)
    assert_response :success
  end

  test "should update rjlog" do
    patch rjlog_url(@rjlog), params: { rjlog: { reportjob_id: @rjlog.reportjob_id, user_id: @rjlog.user_id } }
    assert_redirected_to rjlog_url(@rjlog)
  end

  test "should destroy rjlog" do
    assert_difference('Rjlog.count', -1) do
      delete rjlog_url(@rjlog)
    end

    assert_redirected_to rjlogs_url
  end
end
