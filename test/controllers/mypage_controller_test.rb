require 'test_helper'

class MypageControllerTest < ActionDispatch::IntegrationTest
  test "should get info" do
    get mypage_info_url
    assert_response :success
  end

end
