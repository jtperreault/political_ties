require 'test_helper'

class WyattControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wyatt_controller_index_url
    assert_response :success
  end

end
