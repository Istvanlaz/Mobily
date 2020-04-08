require 'test_helper'

class BestDealsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get best_deals_index_url
    assert_response :success
  end

  test "should get show" do
    get best_deals_show_url
    assert_response :success
  end

end
