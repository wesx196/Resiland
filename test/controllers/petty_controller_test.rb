require 'test_helper'

class PettyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get petty_index_url
    assert_response :success
  end

end
