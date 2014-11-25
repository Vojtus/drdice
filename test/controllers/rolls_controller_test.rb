require 'test_helper'

class RollsControllerTest < ActionController::TestCase
  test "should get roll" do
    get :roll
    assert_response :success
  end

end
