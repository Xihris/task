require 'test_helper'

class EauTasksControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get eau_tasks_create_url
    assert_response :success
  end

  test "should get show" do
    get eau_tasks_show_url
    assert_response :success
  end

  test "should get edit" do
    get eau_tasks_edit_url
    assert_response :success
  end

  test "should get index" do
    get eau_tasks_index_url
    assert_response :success
  end

end
