require 'test_helper'

class ResumetrancerecsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resumetrancerec = resumetrancerecs(:one)
  end

  test "should get index" do
    get resumetrancerecs_url
    assert_response :success
  end

  test "should get new" do
    get new_resumetrancerec_url
    assert_response :success
  end

  test "should create resumetrancerec" do
    assert_difference('Resumetrancerec.count') do
      post resumetrancerecs_url, params: { resumetrancerec: { resume_id: @resumetrancerec.resume_id, user_id: @resumetrancerec.user_id } }
    end

    assert_redirected_to resumetrancerec_url(Resumetrancerec.last)
  end

  test "should show resumetrancerec" do
    get resumetrancerec_url(@resumetrancerec)
    assert_response :success
  end

  test "should get edit" do
    get edit_resumetrancerec_url(@resumetrancerec)
    assert_response :success
  end

  test "should update resumetrancerec" do
    patch resumetrancerec_url(@resumetrancerec), params: { resumetrancerec: { resume_id: @resumetrancerec.resume_id, user_id: @resumetrancerec.user_id } }
    assert_redirected_to resumetrancerec_url(@resumetrancerec)
  end

  test "should destroy resumetrancerec" do
    assert_difference('Resumetrancerec.count', -1) do
      delete resumetrancerec_url(@resumetrancerec)
    end

    assert_redirected_to resumetrancerecs_url
  end
end
