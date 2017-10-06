require 'test_helper'

class IndexControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get index_controller_index_url
    assert_response :success
  end

end
