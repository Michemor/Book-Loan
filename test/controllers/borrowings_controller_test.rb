require "test_helper"

class BorrowingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @borrowing = borrowings(:one)
  end

  test "should get index" do
    get borrowings_url
    assert_response :success
  end

  test "should get new" do
    get new_borrowing_url
    assert_response :success
  end

  test "should create borrowing" do
    assert_difference("Borrowing.count") do
      post borrowings_url, params: { borrowing: { book_id: @borrowing.book_id, book_title: @borrowing.book_title, borrowed_at: @borrowing.borrowed_at, returned_at: @borrowing.returned_at, user_id: @borrowing.user_id, user_name: @borrowing.user_name } }
    end

    assert_redirected_to borrowing_url(Borrowing.last)
  end

  test "should show borrowing" do
    get borrowing_url(@borrowing)
    assert_response :success
  end

  test "should get edit" do
    get edit_borrowing_url(@borrowing)
    assert_response :success
  end

  test "should update borrowing" do
    patch borrowing_url(@borrowing), params: { borrowing: { book_id: @borrowing.book_id, book_title: @borrowing.book_title, borrowed_at: @borrowing.borrowed_at, returned_at: @borrowing.returned_at, user_id: @borrowing.user_id, user_name: @borrowing.user_name } }
    assert_redirected_to borrowing_url(@borrowing)
  end

  test "should destroy borrowing" do
    assert_difference("Borrowing.count", -1) do
      delete borrowing_url(@borrowing)
    end

    assert_redirected_to borrowings_url
  end
end
