require 'test_helper'

class UnitsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get units_create_url
    assert_response :success
  end

  test "should get show" do
    get units_show_url
    assert_response :success
  end

  test "should get edit" do
    get units_edit_url
    assert_response :success
  end

end
