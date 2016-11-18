require 'test_helper'

class ClassifiesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get classifies_new_url
    assert_response :success
  end

  test "should get create" do
    get classifies_create_url
    assert_response :success
  end

end
