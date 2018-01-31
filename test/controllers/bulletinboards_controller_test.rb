require 'test_helper'

class BulletinboardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bulletinboard = bulletinboards(:one)
  end

  test "should get index" do
    get bulletinboards_url
    assert_response :success
  end

  test "should get new" do
    get new_bulletinboard_url
    assert_response :success
  end

  test "should create bulletinboard" do
    assert_difference('Bulletinboard.count') do
      post bulletinboards_url, params: { bulletinboard: { messagecontent: @bulletinboard.messagecontent, nickname: @bulletinboard.nickname } }
    end

    assert_redirected_to bulletinboard_url(Bulletinboard.last)
  end

  test "should show bulletinboard" do
    get bulletinboard_url(@bulletinboard)
    assert_response :success
  end

  test "should get edit" do
    get edit_bulletinboard_url(@bulletinboard)
    assert_response :success
  end

  test "should update bulletinboard" do
    patch bulletinboard_url(@bulletinboard), params: { bulletinboard: { messagecontent: @bulletinboard.messagecontent, nickname: @bulletinboard.nickname } }
    assert_redirected_to bulletinboard_url(@bulletinboard)
  end

  test "should destroy bulletinboard" do
    assert_difference('Bulletinboard.count', -1) do
      delete bulletinboard_url(@bulletinboard)
    end

    assert_redirected_to bulletinboards_url
  end
end
