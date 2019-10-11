require 'test_helper'

class InterviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @interview = interviews(:one)
  end

  test "should get index" do
    get interviews_url
    assert_response :success
  end

  test "should get new" do
    get new_interview_url
    assert_response :success
  end

  test "should create interview" do
    assert_difference('Interview.count') do
      post interviews_url, params: { interview: { name: @interview.name } }
    end

    assert_redirected_to interview_url(Interview.last)
  end

  test "should show interview" do
    get interview_url(@interview)
    assert_response :success
  end

  test "should get edit" do
    get edit_interview_url(@interview)
    assert_response :success
  end

  test "should update interview" do
    patch interview_url(@interview), params: { interview: { name: @interview.name } }
    assert_redirected_to interview_url(@interview)
  end

  test "should destroy interview" do
    assert_difference('Interview.count', -1) do
      delete interview_url(@interview)
    end

    assert_redirected_to interviews_url
  end
end
