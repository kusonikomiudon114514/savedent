require 'test_helper'

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get search_top_url
    assert_response :success
  end

end
