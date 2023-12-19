require 'test_helper'

class NewDevelopmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get new_developments_index_url
    assert_response :success
  end

end
