require 'test_helper'

class PlanesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "should get index" do
    get planes_index_url
    assert_response :success
  end

  test "should get new" do
    get planes_new_url
    assert_response :success
  end

  test "should get create" do
    get planes_create_url
    assert_response :success
  end

  test "should get show" do
    get planes_show_url
    assert_response :success
  end

end
