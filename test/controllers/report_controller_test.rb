require 'test_helper'

class ReportControllerTest < ActionController::TestCase
  test "should get by_year" do
    get :by_year
    assert_response :success
  end

end
