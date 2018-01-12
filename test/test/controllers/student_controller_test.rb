require 'test_helper'

class StudentControllerTest < ActionDispatch::IntegrationTest
  test "should get password" do
    get student_password_url
    assert_response :success
  end

end
