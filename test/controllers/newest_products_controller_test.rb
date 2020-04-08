require 'test_helper'

class NewestProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get newest_products_index_url
    assert_response :success
  end

  test "should get show" do
    get newest_products_show_url
    assert_response :success
  end

end
