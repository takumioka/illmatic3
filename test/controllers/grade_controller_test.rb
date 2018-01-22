require 'test_helper'

class GradeControllerTest < ActionDispatch::IntegrationTest
  test "should get inquiry" do
    get grade_inquiry_url
    assert_response :success
  end

end
