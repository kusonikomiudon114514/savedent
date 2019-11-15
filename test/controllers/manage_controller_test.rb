require 'test_helper'

class ManageControllerTest < ActionDispatch::IntegrationTest
  test "should get school" do
    get manage_school_url
    assert_response :success
  end

end
