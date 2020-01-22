require 'test_helper'

class ServeyControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get servey_top_url
    assert_response :success
  end

end
