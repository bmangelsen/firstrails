require 'test_helper'
require 'pry'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get "/"
    assert_response :success
  end

  test "should get name" do
    get "/Ben"
    assert_response :success
    assert_match(/Ben/, response.body)
  end

  test "should get ipsum" do
    get "/lorem/cat"
    assert_response :success
    assert_match(/world domination/, response.body)
  end

end
