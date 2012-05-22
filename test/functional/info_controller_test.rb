require 'test_helper'

class InfoControllerTest < ActionController::TestCase
  test "should get jobs" do
    get :jobs
    assert_response :success
  end

  test "should get press" do
    get :press
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get privacy" do
    get :privacy
    assert_response :success
  end

  test "should get terms" do
    get :terms
    assert_response :success
  end

end
