require 'test_helper'

class TempTasksControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get temp_tasks_create_url
    assert_response :success
  end

  test "should get destroy" do
    get temp_tasks_destroy_url
    assert_response :success
  end

end
