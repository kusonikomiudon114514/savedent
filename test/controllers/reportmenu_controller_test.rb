require 'test_helper'

class ReportmenuControllerTest < ActionDispatch::IntegrationTest
  test "should get menu" do
    get reportmenu_menu_url
    assert_response :success
  end

end
