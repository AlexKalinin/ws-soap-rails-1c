require 'test_helper'

class OnesSoapControllerTest < ActionController::TestCase
  test "should get testNumbers" do
    get :testNumbers
    assert_response :success
  end

  test "should get testText" do
    get :testText
    assert_response :success
  end

  test "should get testObjects" do
    get :testObjects
    assert_response :success
  end

  test "should get testFiles" do
    get :testFiles
    assert_response :success
  end

end
