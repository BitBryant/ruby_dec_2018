require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_index_url
    assert_response :success
  end

  test "should get create" do
    get users_create_url
    assert_response :success
  end

  test "should get result" do
    get users_result_url
    assert_response :success
  end

  test "should get count" do
    get users_count_url
    assert_response :success
  end

  test "should get user_params" do
    get users_user_params_url
    assert_response :success
  end

end
