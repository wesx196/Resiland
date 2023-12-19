require 'test_helper'

class TimbersideControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get timberside_index_url
    assert_response :success
  end

end
