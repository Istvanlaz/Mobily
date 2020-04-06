require 'test_helper'

class SubCategoryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sub_category_index_url
    assert_response :success
  end

  test "should get show" do
    get sub_category_show_url
    assert_response :success
  end

  test "should get new" do
    get sub_category_new_url
    assert_response :success
  end

  test "should get edit" do
    get sub_category_edit_url
    assert_response :success
  end

end
