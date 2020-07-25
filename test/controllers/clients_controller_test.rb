require 'test_helper'

class ClientsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get clients_index_url
    assert_response :success
  end

  test "should get import" do
    get clients_import_url
    assert_response :success
  end

end
