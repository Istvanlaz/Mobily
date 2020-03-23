require 'test_helper'

class ShopingcartsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shopingcarts_index_url
    assert_response :success
  end

  test "should get show" do
    get shopingcarts_show_url
    assert_response :success
  end

  test "should get new" do
    get shopingcarts_new_url
    assert_response :success
  end

  test "should get edit" do
    get shopingcarts_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get shopingcarts_destroy_url
    assert_response :success
  end

end
