require 'test_helper'

class StudentControllerTest < ActionDispatch::IntegrationTest
  test "should get password" do
    get student_password_url
    assert_response :success
  end

  test "should get password_comp" do
    get student_password_comp_url
    assert_response :success
  end

  test "should get register" do
    get student_register_url
    assert_response :success
  end

end
