require 'test_helper'

class ListItemControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get list_item_index_url
    assert_response :success
  end

  test "should get show" do
    get list_item_show_url
    assert_response :success
  end

  test "should get new" do
    get list_item_new_url
    assert_response :success
  end

  test "should get edit" do
    get list_item_edit_url
    assert_response :success
  end

end
