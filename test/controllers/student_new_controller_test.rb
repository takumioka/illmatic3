require 'test_helper'

class StudentNewControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get student_new_new_url
    assert_response :success
  end

end
