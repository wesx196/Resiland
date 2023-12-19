require 'test_helper'

class Tyne2ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tyne2_index_url
    assert_response :success
  end

end
