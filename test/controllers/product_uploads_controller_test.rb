require 'test_helper'

class ProductUploadsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get product_uploads_new_url
    assert_response :success
  end

end
