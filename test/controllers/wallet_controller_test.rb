require "test_helper"

class WalletControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wallet_index_url
    assert_response :success
  end

  test "should get new" do
    get wallet_new_url
    assert_response :success
  end

  test "should get create" do
    get wallet_create_url
    assert_response :success
  end
end
