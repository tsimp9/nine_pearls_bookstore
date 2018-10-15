require 'test_helper'

class AdminBooksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_books_new_url
    assert_response :success
  end

  test "should get show" do
    get admin_books_show_url
    assert_response :success
  end

  test "should get create" do
    get admin_books_create_url
    assert_response :success
  end

end
