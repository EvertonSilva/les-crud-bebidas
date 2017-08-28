require 'test_helper'

class DrinksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get drinks_index_url
    assert_response :success
  end

  test "should get show" do
    get drinks_show_url
    assert_response :success
  end

  test "should get new" do
    get drinks_new_url
    assert_response :success
  end

  test "should get edit" do
    get drinks_edit_url
    assert_response :success
  end

end
