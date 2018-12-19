require 'test_helper'

class SaysControllerTest < ActionDispatch::IntegrationTest
  test "should get hello" do
    get says_hello_url
    assert_response :success
  end

  test "should get say" do
    get says_say_url
    assert_response :success
  end

  test "should get name" do
    get says_name_url
    assert_response :success
  end

  test "should get restart" do
    get says_restart_url
    assert_response :success
  end

  test "should get times" do
    get says_times_url
    assert_response :success
  end

  test "should get root" do
    get says_root_url
    assert_response :success
  end

end
