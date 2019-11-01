require 'test_helper'

class MensetuControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get mensetu_top_url
    assert_response :success
  end

end
