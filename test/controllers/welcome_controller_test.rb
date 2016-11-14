require 'test_helper'
require 'pry'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get welcome_url
    assert_response :success
  end

  test "should get name route" do
    get "/welcome/Ben"
    assert_response :success
    assert_match(/Ben/, response.body)
  end

end
